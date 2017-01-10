package com.xj.bms.bussiness.news.web;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.plugins.Page;
import com.feilong.core.bean.ConvertUtil;
import com.xj.bms.base.common.bean.AbstractBean;
import com.xj.bms.base.common.exception.EnumSvrResult;
import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.bussiness.news.entity.TbNews;
import com.xj.bms.bussiness.news.service.ITbNewsService;

/**
 * <p>
 * 栏目管理  前端控制器
 * </p>
 *
 * @author xj
 * @since 2017-01-05
 */
@Controller
@RequestMapping("/news/")

public class TbNewsController extends BaseController {

	@Autowired
	private ITbNewsService newsService;
	
	@RequestMapping("listUI")
    public String listUI(Map<String,Object> map,Integer page) {
		Page<TbNews> list = newsService.selectPage(new Page<TbNews>(null==page?0:page, 10));
		map.put("page", list);
		return "news/list";
    }
	
	@RequestMapping("form")
    public String form(Map<String,Object> map) {
		return "news/form";
    }
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	@ResponseBody
	public AbstractBean add(TbNews tbnews){
		AbstractBean bean = new AbstractBean();
			if(tbnews.getId()==null){
				tbnews.setCreateTime(new Date());
				tbnews.setCreateUser(getUserEntity().getAccountName());
				tbnews.setUpdateTime(new Date());
			}else{
				tbnews.setUpdateTime(new Date());
				tbnews.setUpdateUser(getUserEntity().getAccountName());
			}
			tbnews.setIsShow(tbnews.getIsShow()==null?"2":"1");
			if(!newsService.insertOrUpdate(tbnews)){
				bean.setStatus(EnumSvrResult.ERROR.getVal());
				bean.setMessage(EnumSvrResult.ERROR.getName());
			}
		return bean;
	}
	
	@RequestMapping(value="{id}/delete",method=RequestMethod.DELETE)
	@ResponseBody
    public AbstractBean delete(@PathVariable(required=true) Integer id) {	
		AbstractBean bean = new AbstractBean();
		if(!newsService.deleteById(id)){
			bean.setStatus(EnumSvrResult.ERROR.getVal());
			bean.setMessage(EnumSvrResult.ERROR.getName());
		}
		return bean;
    }	
	
	@RequestMapping(value="{id}/select",method=RequestMethod.GET)
    public String select(Map<String,Object> map,@PathVariable(required=true) Integer id) {	
		TbNews tbnews = newsService.selectById(id);
		map.put("record", tbnews);
		return "news/edit";
    }	
	
	@RequestMapping(value="{ids}/deleteBatch",method=RequestMethod.DELETE)
	@ResponseBody
	public AbstractBean deleteBatch(@PathVariable(required=true) String ids) {
		AbstractBean bean = new AbstractBean();
		if(!newsService.deleteBatchIds(ConvertUtil.toList(ids.split(",")))){
			bean.setStatus(EnumSvrResult.ERROR.getVal());
			bean.setMessage(EnumSvrResult.ERROR.getName());
		}
		return bean;
	}
}
