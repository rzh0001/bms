package com.xj.cms.base.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.xj.cms.base.user.entity.TbUser;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
public interface TbUserMapper extends BaseMapper<TbUser> {
	
	public List<TbUser> selectUserList(Pagination page,@Param("name") String name);
	
	public TbUser selectUserRole(@Param("userId") Integer userId);
}