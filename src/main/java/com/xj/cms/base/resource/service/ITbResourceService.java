package com.xj.cms.base.resource.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.xj.cms.base.resource.entity.TbResource;

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
}
