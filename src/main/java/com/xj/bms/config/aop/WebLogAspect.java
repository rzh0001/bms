/*package com.xj.bms.config.aop;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.xj.bms.base.index.web.BaseController;
import com.xj.bms.base.loginfo.entity.TbLogInfo;
import com.xj.bms.base.loginfo.service.ITbLogInfoService;


@Aspect
@Component
public class WebLogAspect {
	private Logger logger = LogManager.getLogger(WebLogAspect.class.getName());
	
    @Resource
    private ITbLogInfoService logInfoService;

	@Around("execution(public * com.xj.bms.*.*.web.*.*(..))")  
    public Object doWebLog(ProceedingJoinPoint joinPoint) throws Throwable {
  
        Object returnVal;
        Object target = joinPoint.getTarget();
        String methodName = joinPoint.getSignature().getName();
        Class[] parameterTypes = ((MethodSignature) joinPoint.getSignature()).getMethod().getParameterTypes();
        Method method;
        //通过反射获得拦截的method
        method = target.getClass().getMethod(methodName, parameterTypes);
        Long id = null;
        try {
            if (method == null || methodName.equals("login")) {
                return joinPoint.proceed();
            }
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            HttpServletRequest request = attributes.getRequest();
            String methodToUse = joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature()
                    .getName();
            logger.info("URL : " + request.getRequestURL().toString());
            logger.info("HTTP_METHOD : " + request.getMethod());
            logger.info("IP : " + request.getRemoteAddr());
            logger.info("CLASS_METHOD : " +methodToUse );
            logger.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
            id = doWebLog(methodName, Arrays.toString(joinPoint.getArgs()));
            returnVal = joinPoint.proceed();
            updateWebLog(id, "成功", "操作成功");
        } catch (Exception e) {
            updateWebLog(id, "失败", e.getMessage());
            throw new RuntimeException(e);
        }
        return returnVal;  
    }
    
    private Long doWebLog(String method, Object args) {
        TbLogInfo logInfo = new TbLogInfo();
        logInfo.setAccountName(BaseController.getloginUserAccountName());
        logInfo.setMethodArgs(args.toString());
        logInfo.setMethod(method);
        logInfo.setOperateTime(new Date());
        logInfo.setOperateIp(SecurityUtils.getSubject().getSession().getHost());
        logInfoService.insert(logInfo);
        return logInfo.getId();
    }

    private void updateWebLog(Long id, String status, String remark) {
    	TbLogInfo logInfo = new TbLogInfo();
    	logInfo.setId(id);
    	logInfo.setRemark(remark);
    	logInfo.setStatus(status);
    	logInfo.setOperateTime(new Date());
    	logInfoService.updateById(logInfo);
    }
}
*/