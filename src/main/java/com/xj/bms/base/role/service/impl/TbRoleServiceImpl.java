package com.xj.bms.base.role.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.feilong.core.util.CollectionsUtil;
import com.xj.bms.base.resourcerole.entity.TbResourcesRole;
import com.xj.bms.base.resourcerole.mapper.TbResourcesRoleMapper;
import com.xj.bms.base.role.entity.TbRole;
import com.xj.bms.base.role.mapper.TbRoleMapper;
import com.xj.bms.base.role.service.ITbRoleService;

/**
 * <p>
 * 角色表  服务实现类
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Service
public class TbRoleServiceImpl extends ServiceImpl<TbRoleMapper, TbRole> implements ITbRoleService {
	
	@Autowired
	private TbResourcesRoleMapper resourceRoleMapper;
	@Autowired
	private TbRoleMapper roleMapper;

	@Override
	@Transactional
	public void savePermission(Integer roleId, List<Integer> resourceIds) {
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("r_id", roleId);
		List<TbResourcesRole> roleResources = resourceRoleMapper.selectByMap(params);
		
		List<TbResourcesRole> newRes = new ArrayList<TbResourcesRole>();
		for(Integer sid : resourceIds){
			TbResourcesRole rr = new TbResourcesRole();
			rr.setRid(roleId);
			rr.setSid(sid);
			newRes.add(rr);
		}
		
		//查找出需要删除的
		List<TbResourcesRole> removeRes = CollectionsUtil.selectRejected(roleResources,"sid",resourceIds);
		//查找需要新增的
		List<TbResourcesRole> addRes = CollectionsUtil.selectRejected(newRes,"sid",CollectionsUtil.getPropertyValueList(roleResources, "sid"));
		for(TbResourcesRole r:removeRes){
			resourceRoleMapper.deleteById(r.getId());
		}
		for(TbResourcesRole r:addRes){
			r.setCreateTime(new Date(System.currentTimeMillis()));
			resourceRoleMapper.insert(r);
		}
	}

	@Override
	@Transactional
	public boolean deleteRoleResource(Integer roleId) {
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("r_id", roleId);
		resourceRoleMapper.deleteByMap(params);
		if(roleMapper.deleteById(roleId)>0){
			return true;
		}
		return false;
	}
	
}
