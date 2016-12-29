package com.xj.bms.base.index.web;


import org.apache.shiro.SecurityUtils;

import com.xj.bms.base.user.entity.TbUser;


public abstract class BaseController {
	
	/**
	 * 获取登录用户信息
	 * @return
	 */
	public TbUser getUserEntity() {
		return (TbUser)SecurityUtils.getSubject().getPrincipal();
	}
	
}

