package com.xj.bms;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@MapperScan("com.xj.bms.**.mapper*")
@SpringBootApplication
@ServletComponentScan   //servelet注册
public class App 
{

    public static void main( String[] args )
    {
    	  SpringApplication.run(App.class, args);
    }
}