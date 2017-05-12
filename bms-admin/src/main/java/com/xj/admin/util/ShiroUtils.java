package com.xj.admin.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class ShiroUtils {
	
	private static final Logger logger = LoggerFactory.getLogger(ShiroUtils.class);
	
	
	/**
	 * 是否是Ajax请求
	 * @param request
	 * @return
	 */
	public static boolean isAjax(ServletRequest request){
		return "XMLHttpRequest".equalsIgnoreCase(((HttpServletRequest) request).getHeader("X-Requested-With"));
	}
	
	/**
	 * response 输出JSON
	 * @param response
	 * @param resultMap
	 * @throws IOException
	 */
	public static void writeJson(ServletResponse response, Map<String, Object> resultMap){
		PrintWriter out = null;
		try {
			response.setCharacterEncoding("UTF-8");
			out = response.getWriter();
			out.print(JsonUtil.getJsonFromObject(resultMap));
		} catch (Exception e) {
			logger.error("输出JSON异常:", e);
		}finally{
			if(null != out){
				out.flush();
				out.close();
			}
		}
	}
}
