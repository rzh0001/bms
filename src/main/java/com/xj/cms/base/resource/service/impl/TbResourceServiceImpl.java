package com.xj.cms.base.resource.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.xj.cms.base.resource.entity.TbResource;
import com.xj.cms.base.resource.mapper.TbResourceMapper;
import com.xj.cms.base.resource.service.ITbResourceService;

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
		List<TbResource> tlist = new ArrayList<TbResource>();
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
	
	
}
