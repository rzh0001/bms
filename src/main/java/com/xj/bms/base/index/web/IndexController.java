package com.xj.bms.base.index.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xj.bms.base.resource.entity.TbResource;
import com.xj.bms.base.resource.service.ITbResourceService;
import com.xj.bms.base.user.entity.TbUser;

/**
 * <p>
 * 用户账户表 前端控制器
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@Controller
public class IndexController {
	private Logger logger = LogManager.getLogger(IndexController.class.getName());
	
	@Resource
	private ITbResourceService resourceService;
	
	@RequestMapping({"/","/index" })
	public String index(Map<String, Object> map) {
		TbUser userEntity = (TbUser)SecurityUtils.getSubject().getPrincipal();
		List<TbResource> list = resourceService.findResourcesMenuByUserId(userEntity.getId());
		map.put("menus", list);
		map.put("user", userEntity);
		return "index";
	}
	
	@RequestMapping(value="/getMenu",method=RequestMethod.GET)
	@ResponseBody
	public Object getMenu(){
		// 获取登录的bean
		TbUser userEntity = (TbUser)SecurityUtils.getSubject().getPrincipal();
		List<TbResource> list = resourceService.findResourcesMenuByUserId(userEntity.getId());
		return list;
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
    public String login(){
       return "login";
    }
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, Map<String, Object> map) {
		// 登录失败从request中获取shiro处理的异常信息。
		// shiroLoginFailure:就是shiro异常类的全类名.
		String exception = (String) request.getAttribute("shiroLoginFailure");
		String msg = "";
		if (exception != null) {
			if (UnknownAccountException.class.getName().equals(exception)) {
				logger.info("UnknownAccountException -- > 账号不存在：");
				msg = "账户不存在！";
			} else if (IncorrectCredentialsException.class.getName().equals(exception)) {
				logger.info("IncorrectCredentialsException -- > 密码不正确：");
				msg = "密码错误！";
			} else if ("kaptchaValidateFailed".equals(exception)) {
				logger.info("kaptchaValidateFailed -- > 验证码错误");
				msg = "验证码错误！";
			}else if(LockedAccountException.class.getName().equals(exception)){
				msg = "您的账户已被锁定,请与管理员联系！";
			}else if (ExcessiveAttemptsException.class.getName().equals(exception)) {    
				msg = "登录失败次数过多,请稍后再试！";
            } else {
				msg = "登录异常，请联系管理员！ ";
				logger.info("else -- >{}" + exception);
			}
		}else{
			logger.error("LoginError:{}");
		}
		map.put("msg", msg);
		// 此方法不处理登录成功,由shiro进行处理.
		return "/login";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {
		// 注销登录
		SecurityUtils.getSubject().logout();
		return "redirect:login.html";
	}
}
