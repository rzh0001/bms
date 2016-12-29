package com.xj.bms.base.role.web;

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
import com.xj.bms.base.common.bean.AbstractBean;
import com.xj.bms.base.common.exception.EnumSvrResult;
import com.xj.bms.base.common.model.JSTreeEntity;
import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.base.resource.entity.TbResource;
import com.xj.bms.base.resource.service.ITbResourceService;
import com.xj.bms.base.role.entity.TbRole;
import com.xj.bms.base.role.service.ITbRoleService;
import com.xj.bms.util.TreeUtil;

/**
 * <p>
 * 角色表  前端控制器
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Controller
@RequestMapping("/role/")
public class TbRoleController extends BaseController{
	
	@Autowired
	private ITbRoleService roleService;
	
	@Autowired
	private ITbResourceService resourceService;
	
	@RequestMapping("listUI")
    public String listUI(Map<String,Object> map,Integer page) {
		Page<TbRole> roles = roleService.selectPage(new Page<TbRole>(null==page?0:page, 10));
		map.put("page", roles);
		return "role/list";
    }
	
	@RequestMapping("form")
    public String form(Map<String,Object> map) {
		return "role/form";
    }
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	@ResponseBody
	public AbstractBean add(TbRole role){
		AbstractBean bean = new AbstractBean();
		if(role.getId()==null){
			role.setCreateTime(new Date(System.currentTimeMillis()));
			role.setUpdateTime(new Date(System.currentTimeMillis()));
		}else
		{
			role.setUpdateTime(new Date(System.currentTimeMillis()));
		}
		
		if(!roleService.insertOrUpdate(role)){
			bean.setStatus(EnumSvrResult.ERROR.getVal());
			bean.setMessage(EnumSvrResult.ERROR.getName());
		}
		return bean;
	}
	
	@RequestMapping(value="{roleId}/delete",method=RequestMethod.DELETE)
	@ResponseBody
    public AbstractBean delete(@PathVariable(required=true) Integer roleId) {	
		AbstractBean bean = new AbstractBean();
		if(!roleService.deleteRoleResource(roleId)){
			bean.setStatus(EnumSvrResult.ERROR.getVal());
			bean.setMessage(EnumSvrResult.ERROR.getName());
		}
		return bean;
    }	
	
	@RequestMapping(value="{roleId}/select",method=RequestMethod.GET)
    public String select(Map<String,Object> map,@PathVariable(required=true) Integer roleId) {	
		TbRole role = roleService.selectById(roleId);
		map.put("role", role);
		return "role/edit";
    }	
	
	@RequestMapping(value="{roleId}/permission",method=RequestMethod.GET)
    public String permission(Map<String,Object> map,@PathVariable(required=true) Integer roleId) {	
		TbRole role = roleService.selectById(roleId);
		Map<String,Object> parameter = new HashMap<String,Object>();
		parameter.put("isHide", 0);
		parameter.put("roleId", roleId);
		List<TbResource> resources = resourceService.queryResourceList(parameter);
		List<JSTreeEntity> jstreeList = new TreeUtil().generateJSTree(resources);
		map.put("role", role);
		map.put("resources", jstreeList);
		return "role/permission";
    }	
	
	@RequestMapping(value="{roleId}/getPermission",method=RequestMethod.GET)
	@ResponseBody
    public Object getPermission(@PathVariable(required=true) Integer roleId) {	
		Map<String,Object> parameter = new HashMap<String,Object>();
		parameter.put("isHide", 0);
		parameter.put("roleId", roleId);
		List<TbResource> resources = resourceService.queryResourceList(parameter);
		List<JSTreeEntity> jstreeList = new TreeUtil().generateJSTree(resources);
		return jstreeList;
    }	
	
	@RequestMapping(value="savePermission",method = RequestMethod.POST)
	@ResponseBody
	public AbstractBean permission(int roleId, @RequestParam("resourceIds[]") List<Integer> resourceIds){
		AbstractBean bean = new AbstractBean();
		roleService.savePermission(roleId,resourceIds);
		return bean;
	}
}
