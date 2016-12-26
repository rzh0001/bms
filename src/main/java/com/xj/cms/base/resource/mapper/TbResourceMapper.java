package com.xj.cms.base.resource.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.xj.cms.base.resource.entity.TbResource;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
public interface TbResourceMapper extends BaseMapper<TbResource> {
	
	public List<TbResource> findResourcesByUserId(@Param(value="userId") int userId);
	
	public List<TbResource> findResourcesMenuByUserId(@Param(value="userId") int userId);

}