package com.xj.bms.base.user.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.plugins.Page;
import com.feilong.core.Validator;
import com.feilong.core.bean.ConvertUtil;
import com.xj.bms.base.common.bean.AbstractBean;
import com.xj.bms.base.common.exception.EnumSvrResult;
import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.base.role.entity.TbRole;
import com.xj.bms.base.role.service.ITbRoleService;
import com.xj.bms.base.user.entity.TbUser;
import com.xj.bms.base.user.service.ITbUserService;
import com.xj.bms.util.EndecryptUtils;
import com.xj.bms.util.JsonUtil;
import com.xj.bms.util.dtgrid.model.Pager;

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
	
	@GetMapping("listUI")
    public String listUI() {
		return "user/list";
    }
	
	@PostMapping("list")
	@ResponseBody
    public Object list(String gridPager) {
		Pager pager = JsonUtil.getObjectFromJson(gridPager, Pager.class);
		Map<String, Object> parameters = null;
		String name = "";
		if(Validator.isNullOrEmpty(pager.getParameters())){
			parameters = new HashMap<>();
		}else{
			parameters = pager.getParameters();
			name = parameters.get("name").toString();
		}
		Page<TbUser> list = userService.selectUserList(new Page<TbUser>(pager.getNowPage(), pager.getPageSize()),name);
		parameters.clear();
		parameters.put("isSuccess", Boolean.TRUE);
		parameters.put("nowPage", pager.getNowPage());
		parameters.put("pageSize",pager.getPageSize());
		parameters.put("pageCount", list.getPages());
		parameters.put("recordCount", list.getTotal());
		parameters.put("startRecord", list.getOffsetCurrent());
		parameters.put("exhibitDatas",list.getRecords());
		return parameters;
    }
	
	@GetMapping("form")
    public String form(Map<String,Object> map) {
		List<TbRole> list = roleService.selectByMap(null);
		map.put("roles", list);
		return "user/form";
    }
	
	@GetMapping("checkAccount")
	@ResponseBody
    public boolean checkAccount(@RequestParam(required=true) String accountName) {
		List<TbUser> user = userService.selectByMap(ConvertUtil.toMap("u_account_name",(Object)accountName));
		if(!Validator.isNullOrEmpty(user)){
			return false;
		}
		return true;
    }
	
	@PostMapping("save")
	@ResponseBody
	public AbstractBean add(Map<String,Object> map,TbUser user){
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
				return fail(EnumSvrResult.ERROR);
			}
		}else{
			userService.updateAll(user);
		}
		return success();
	}
	
	@DeleteMapping("{userId}/delete")
	@ResponseBody
    public AbstractBean delete(@PathVariable(required=true) Integer userId) {	
		if(!userService.delUser(userId)){
			return fail(EnumSvrResult.ERROR);
		}
		return success();
    }	
	
	@GetMapping("{userId}/select")
    public String select(Map<String,Object> map,@PathVariable(required=true) Integer userId) {	
		TbUser user = userService.selectUserRole(ConvertUtil.toMap("userId",(Object)userId));
		List<TbRole> list = roleService.selectByMap(null);
		map.put("roles", list);
		map.put("user", user==null?new TbUser():user);
		return "user/edit";
    }	
	
	@GetMapping("{userId}/toRestPassword")
    public String restPassword(Map<String,Object> map,@PathVariable(required=true) Integer userId) {	
		TbUser user = userService.selectById(userId);
		map.put("user", user);
		return "user/rest";
    }	
	
	@PostMapping(value = "restPassword")
	@ResponseBody
	public AbstractBean restPassword(Map<String,Object> map,TbUser user){
		TbUser userEntity = userService.selectById(user.getId());
		TbUser userFlag = EndecryptUtils.md5Password(user.getAccountName(), user.getPassword(), 2);
		//设置添加用户的密码和加密盐
		userEntity.setPassword(userFlag.getPassword());
		userEntity.setCredentialsSalt(userFlag.getCredentialsSalt());
		userEntity.setUpdateTime(new Date(System.currentTimeMillis()));
		if(!userService.updateById(userEntity)){
			return fail(EnumSvrResult.ERROR);
		}
		return success();
	}
}
