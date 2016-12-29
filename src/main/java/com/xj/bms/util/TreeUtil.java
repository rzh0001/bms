package com.xj.bms.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.xj.bms.base.common.model.JSTreeEntity;
import com.xj.bms.base.common.model.Select2Entity;
import com.xj.bms.base.resource.entity.TbResource;


public class TreeUtil {
	
	/*
	 * select2下拉组件数据对象
	 */
	private List<Select2Entity> selectTree = new ArrayList<Select2Entity>();
	/*
	 * 生成select2下拉组件数据时遍历的次数
	 */
	private int selectCnt = 0;

	public List<JSTreeEntity> generateJSTree(List<TbResource> resourceList)
	{
		List<JSTreeEntity> jstreeList = new ArrayList<JSTreeEntity>();
		
		for (TbResource resourceEntity : resourceList) {
			JSTreeEntity jstree = new JSTreeEntity();
			jstree.setId(resourceEntity.getId().toString());
			jstree.setParent(resourceEntity.getParentId()==null ? "#" : resourceEntity.getParentId().toString());
			jstree.setText(resourceEntity.getName());
			jstree.setIcon(StringUtils.isBlank(resourceEntity.getIcon()) ? "am-icon-cog" : resourceEntity.getIcon());
			JSTreeEntity.State state = new JSTreeEntity().new State();
			state.setDisabled(false);
			state.setSelected(resourceEntity.isSelected());
			state.setOpened(true);
			jstree.setState(state);
			jstreeList.add(jstree);
		}
		return jstreeList;
	}
	
	/**
	 * 根据父节点的ID获取所有子节点
	 * @param list	具有树形结构特点的集合
	 * @param parent	父节点ID
	 * @return	树形结构集合
	 */
	public List<Select2Entity> getSelectTree(List<TbResource> list,Integer parentId) {
		List<TbResource> returnList = getChildResourceEntitys(list, parentId);
		recursionForSelect(returnList);
		return selectTree;
	}
	
	/**
	 * 递归列表
	 * @param list
	 * @param t
	 */
	private void recursionForSelect(List<TbResource> list) {
		String str = "";
		for(int i=0; i< selectCnt; i++)
		{
			str += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		}
		for (TbResource re : list) {
			if(null == re.getParentId())
			{
				str = "";
				selectCnt = 0;
			}
			Select2Entity se = new Select2Entity();
			se.setId(re.getId().toString());
			se.setText(str + re.getName());
			se.setName(re.getName());
			selectTree.add(se);
			if(re.getChildren().size() > 0)
			{
				selectCnt ++;
				recursionForSelect(re.getChildren());
			}
		}
	}
	
	
	
	/**
	 * 根据父节点的ID获取所有子节点
	 * @param list	具有树形结构特点的集合
	 * @param parent	父节点ID
	 * @return	树形结构集合
	 */
	public List<TbResource> getChildResourceEntitys(List<TbResource> list,Integer parentId) {
		List<TbResource> returnList = new ArrayList<TbResource>();
		for (Iterator<TbResource> iterator = list.iterator(); iterator.hasNext();) {
			TbResource t = iterator.next();
			// 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
			if (t.getParentId()==parentId) {
				recursionFn(list, t);
				returnList.add(t);
			}
		}
		return returnList;
	}
	
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
