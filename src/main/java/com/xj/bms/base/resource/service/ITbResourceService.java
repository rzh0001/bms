package com.xj.bms.base.resource.service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.xj.bms.base.resource.entity.TbResource;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
public interface ITbResourceService extends IService<TbResource> {
	
	public List<TbResource> findResourcesByUserId(int userId);
	
	public List<TbResource> findResourcesMenuByUserId(int userId);
	
    public List<TbResource> queryResourceList(Map<String, Object> parameter);
    
	public Page<TbResource> selectResourceList(Page<TbResource> page,Map<String, Object> parameter);
	
	public void deleteRoleResource(int resourceId);
}
