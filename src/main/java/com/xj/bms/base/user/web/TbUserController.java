package com.xj.bms.base.user.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.plugins.Page;
import com.feilong.core.Validator;
import com.xj.bms.base.common.bean.AbstractBean;
import com.xj.bms.base.common.exception.EnumSvrResult;
import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.base.role.entity.TbRole;
import com.xj.bms.base.role.service.ITbRoleService;
import com.xj.bms.base.user.entity.TbUser;
import com.xj.bms.base.user.service.ITbUserService;
import com.xj.bms.util.EndecryptUtils;

/**
 * <p>
 * 用户账户表  前端控制器
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Controller
@RequestMapping("/user/")
public class TbUserController extends BaseController{
	@Autowired
	private ITbUserService userService;
	@Autowired
	private ITbRoleService roleService;
	
	@RequestMapping("listUI")
    public String listUI(Map<String,Object> map,Integer page,String name) {
		Page<TbUser> users = userService.selectUserList(new Page<TbUser>(null==page?0:page, 10),name);
		map.put("page", users);
		map.put("name",name==null?"":name);
		return "user/list";
    }
	
	@RequestMapping("form")
    public String form(Map<String,Object> map) {
		List<TbRole> list = roleService.selectByMap(null);
		map.put("roles", list);
		return "user/form";
    }
	
	@RequestMapping(value="checkAccount",method=RequestMethod.GET)
	@ResponseBody
    public boolean checkAccount(@RequestParam(required=true) String accountName) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("u_account_name", accountName);
		List<TbUser> user = userService.selectByMap(params);
		if(!Validator.isNullOrEmpty(user)){
			return false;
		}
		return true;
    }
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	@ResponseBody
	public AbstractBean add(Map<String,Object> map,TbUser user){
		AbstractBean bean = new AbstractBean();
		
		if(user.getId()==null){
			// 加密用户输入的密码，得到密码和加密盐，保存到数据库
			TbUser userEntity = EndecryptUtils.md5Password(user.getAccountName(), user.getPassword(), 2);
			//设置添加用户的密码和加密盐
			user.setPassword(userEntity.getPassword());
			user.setCredentialsSalt(userEntity.getCredentialsSalt());
			//设置创建者姓名
			user.setCreatorName(getUserEntity().getAccountName());
			user.setCreateTime(new Date(System.currentTimeMillis()));
			user.setUpdateTime(new Date(System.currentTimeMillis()));
			//设置锁定状态：未锁定；删除状态：未删除
			user.setLocked(0);
			user.setDeleteStatus(0);
			boolean result = userService.insertAll(user);
			if(!result)
			{
				bean.setStatus(EnumSvrResult.ERROR.getVal());
				bean.setMessage(EnumSvrResult.ERROR.getName());
			}
		}else{
			userService.updateAll(user);
		}
	
		return bean;
	}
	
	@RequestMapping(value="{userId}/delete",method=RequestMethod.DELETE)
	@ResponseBody
    public AbstractBean delete(@PathVariable(required=true) Integer userId) {	
		AbstractBean bean = new AbstractBean();
		if(!userService.delUser(userId)){
			bean.setStatus(EnumSvrResult.ERROR.getVal());
			bean.setMessage(EnumSvrResult.ERROR.getName());
		}
		return bean;
    }	
	
	@RequestMapping(value="{userId}/select",method=RequestMethod.GET)
    public String select(Map<String,Object> map,@PathVariable(required=true) Integer userId) {	
		Map<String, Object> parameter = new HashMap<String,Object>();
		parameter.put("userId", userId);
		TbUser user = userService.selectUserRole(parameter);
		List<TbRole> list = roleService.selectByMap(null);
		map.put("roles", list);
		map.put("user", user==null?new TbUser():user);
		return "user/edit";
    }	
	
}
