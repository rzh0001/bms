package com.xj.admin.base.user.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.xj.admin.base.user.entity.TbUser;

/**
 * <p>
 * Mapper接口
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
public interface TbUserMapper extends BaseMapper<TbUser> {
	
	public List<TbUser> selectUserList(Pagination page,@Param("name") String name,@Param("deptId") Integer deptId);
	
	public TbUser selectUserRole(Map<String, Object> parameter);
}