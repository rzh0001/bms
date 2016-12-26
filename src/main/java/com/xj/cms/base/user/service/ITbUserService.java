package com.xj.cms.base.user.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.xj.cms.base.user.entity.TbUser;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
public interface ITbUserService extends IService<TbUser> {
	
	public Page<TbUser> selectUserList(Page<TbUser> page,String name);
	
	public TbUser selectUserRole(Integer userId);
	
	public boolean insertAll(TbUser user);
	
	public boolean updateAll(TbUser user);
	
	public boolean delUser(Integer userId);
}
