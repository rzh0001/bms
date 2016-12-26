package com.xj.cms.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

import org.springframework.beans.BeansException;
import org.springframework.beans.FatalBeanException;
import org.springframework.util.Assert;

/**
 * apache和spring的工具包中都有BeanUtils
 * 重写Spring的copProperties方法是因为在copy的时候如果新结果数据中有空值、也会把空值copy进去
 * 不能满足特定业务、所以特定重写过滤把空值copy到需要实例化的类
 *
 */
public abstract class BeanUtils extends org.springframework.beans.BeanUtils {
	public static void copyProperties(Object source, Object target) throws BeansException {  
	    Assert.notNull(source, "Source must not be null");  
	    Assert.notNull(target, "Target must not be null");  
	    Class<?> actualEditable = target.getClass();  
	    PropertyDescriptor[] targetPds = getPropertyDescriptors(actualEditable);  
	    for (PropertyDescriptor targetPd : targetPds) {  
	      if (targetPd.getWriteMethod() != null) {  
	        PropertyDescriptor sourcePd = getPropertyDescriptor(source.getClass(), targetPd.getName());  
	        if (sourcePd != null && sourcePd.getReadMethod() != null) {  
	          try {  
	            Method readMethod = sourcePd.getReadMethod();  
	            if (!Modifier.isPublic(readMethod.getDeclaringClass().getModifiers())) {  
	              readMethod.setAccessible(true);  
	            }  
	            Object value = readMethod.invoke(source); 
	            // 这里判断以下value是否为空 当然这里也能进行一些特殊要求的处理 例如绑定时格式转换等等  
	            if (value != null) {  
	              Method writeMethod = targetPd.getWriteMethod();  
	              if (!Modifier.isPublic(writeMethod.getDeclaringClass().getModifiers())) {  
	                writeMethod.setAccessible(true);  
	              }  
	              writeMethod.invoke(target, value);  
	            }  
	          } catch (Throwable ex) {  
	            throw new FatalBeanException("Could not copy properties from source to target", ex);  
	          }  
	        }  
	      }  
	    }  
	  }  
}
