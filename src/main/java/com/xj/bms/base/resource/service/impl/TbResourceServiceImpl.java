package com.xj.bms.base.resource.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.feilong.core.bean.ConvertUtil;
import com.xj.bms.base.resource.entity.TbResource;
import com.xj.bms.base.resource.mapper.TbResourceMapper;
import com.xj.bms.base.resource.service.ITbResourceService;
import com.xj.bms.base.resourcerole.mapper.TbResourcesRoleMapper;

/**
 * <p>
 * 资源表  服务实现类
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Service
public class TbResourceServiceImpl extends ServiceImpl<TbResourceMapper, TbResource> implements ITbResourceService {

	@Autowired
	private TbResourceMapper resourceMapper;
	
	@Autowired
	private TbResourcesRoleMapper resourceRoleMapper;
	
	@Override
	public List<TbResource> findResourcesByUserId(int userId) {
		return resourceMapper.findResourcesByUserId(userId);
	}

	@Override
	public List<TbResource> findResourcesMenuByUserId(int userId) {
		List<TbResource> resources = resourceMapper.findResourcesMenuByUserId(userId);
		List<TbResource> returnList = new ArrayList<TbResource>();
		for (Iterator<TbResource> iterator = resources.iterator(); iterator.hasNext();) {
			TbResource t = iterator.next();
			// 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
			if (t.getParentId()==null) {
				recursionFn(resources, t);
				returnList.add(t);
			}
		}
		return returnList;
	}
	
	/**
	 * 递归列表
	 * @param list
	 * @param t
	 */
	private void recursionFn(List<TbResource> list, TbResource t) {
		List<TbResource> childList = getChildList(list, t);// 得到子节点列表
		t.setChildren(childList);
		for (TbResource tChild : childList) {
			if (hasChild(list, tChild)) {// 判断是否有子节点
				Iterator<TbResource> it = childList.iterator();
				while (it.hasNext()) {
					TbResource n = (TbResource) it.next();
					recursionFn(list, n);
				}
			}
		}
	}
	
	/**
	 * 得到子节点列表
	 * @param list
	 * @param t
	 * @return
	 */
	private List<TbResource> getChildList(List<TbResource> list, TbResource t) {
		List<TbResource> tlist = new ArrayList<>();
		Iterator<TbResource> it = list.iterator();
		while (it.hasNext()) {
			TbResource n = (TbResource) it.next();
			if(t.getType()!=2)
			{
				if (n.getParentId() == Integer.valueOf(t.getId().toString())) {
					//n.setParentName(t.getName());
					tlist.add(n);
				}
			}
		}
		return tlist;
	} 
	
	/**
	 * 判断是否有子节点
	 * @param list
	 * @param t
	 * @return
	 */
	private boolean hasChild(List<TbResource> list, TbResource t) {
		return getChildList(list, t).size() > 0 ? true : false;
	}

	@Override
	public List<TbResource> queryResourceList(Map<String, Object> parameter) {
		return resourceMapper.queryResourceList(parameter);
	}

	@Override
	public Page<TbResource> selectResourceList(Page<TbResource> page, Map<String, Object> parameter) {
		page.setRecords(resourceMapper.selectResourceList(page,parameter));
		return page;
	}

	@Override
	@Transactional
	public void deleteRoleResource(int resourceId) {
		resourceRoleMapper.deleteByMap(ConvertUtil.toMap("s_id",(Object)resourceId));
		resourceMapper.deleteById(resourceId);
		
	}
}
