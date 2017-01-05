package com.xj.bms.base.loginlog.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.mybatisplus.mapper.Condition;
import com.baomidou.mybatisplus.plugins.Page;
import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.base.loginlog.entity.TbLoginInfo;
import com.xj.bms.base.loginlog.service.ITbLoginInfoService;

/**
 * <p>
 *   前端控制器
 * </p>
 *
 * @author xj
 * @since 2017-01-04
 */
@Controller
@RequestMapping("/loginlog/")

public class TbLoginInfoController extends BaseController {

	@Autowired
	private ITbLoginInfoService loginlogService;
	
	@RequestMapping("listUI")
    public String listUI(Map<String,Object> map,Integer page,String accountName) {
		@SuppressWarnings("unchecked")
		Page<TbLoginInfo> list = loginlogService.selectPage(new Page<TbLoginInfo>(null==page?0:page, 10),Condition.instance().like("account_name", accountName).orderBy("id", false));
		map.put("page", list);
		map.put("accountName", accountName);
		return "loginlog/list";
    }
	

}
