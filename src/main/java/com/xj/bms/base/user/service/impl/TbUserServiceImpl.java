package com.xj.bms.base.user.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.xj.bms.base.user.entity.TbUser;
import com.xj.bms.base.user.mapper.TbUserMapper;
import com.xj.bms.base.user.service.ITbUserService;
import com.xj.bms.base.userrole.entity.TbRoleUser;
import com.xj.bms.base.userrole.mapper.TbRoleUserMapper;

/**
 * <p>
 * 用户账户表  服务实现类
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Service
public class TbUserServiceImpl extends ServiceImpl<TbUserMapper, TbUser> implements ITbUserService {
	
	@Autowired
	private TbUserMapper userMapper;
	@Autowired
	private TbRoleUserMapper roleUserMapper;
	
	@Override
	public Page<TbUser> selectUserList(Page<TbUser> page,String name) {
		page.setRecords(userMapper.selectUserList(page,name));
		return page;
	}

	@Override
	@Transactional
	public boolean insertAll(TbUser user) {
		if(userMapper.insert(user)>0){
			TbRoleUser roleUser = new TbRoleUser();
			roleUser.setRId(user.getRole().getId());
			roleUser.setUId(user.getId());
			roleUser.setTCreateTime(new Date(System.currentTimeMillis()));
			if(roleUserMapper.insert(roleUser)>0){
				return true;
			}
		}
		return false;
	}

	@Override
	@Transactional
	public boolean delUser(Integer userId) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("u_id", userId);
		if(roleUserMapper.deleteByMap(params)>0){
			return userMapper.deleteById(userId)>0;
		}
		return false;
	}

	@Override
	public TbUser selectUserRole(Map<String, Object> parameter) {
		return userMapper.selectUserRole(parameter);
	}

	@Override
	public boolean updateAll(TbUser user) {
		TbUser baseUser = userMapper.selectById(user.getId());
		if(userMapper.update(user, new EntityWrapper<TbUser>(baseUser))>0){
			TbRoleUser roleUser = new TbRoleUser();
			roleUser.setRId(user.getRole().getId());
			roleUser.setUId(user.getId());
			roleUser.setTCreateTime(new Date(System.currentTimeMillis()));
			return roleUserMapper.update(roleUser, new EntityWrapper<TbRoleUser>(new TbRoleUser(user.getId())))>0;
		}
		
		return false;
	}

}
