package com.gd.test.component.demo.interceptor;

import java.net.URLDecoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	// preHandle在处理器映射器之前进行执行
	// return false:拦截 return true:放行
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object arg2) throws Exception {
		Cookie[] cookies = req.getCookies();
		//判断是否登录过
		for (int i = 0; cookies != null && i < cookies.length; i++) {
			if (cookies[i].getName().equals("user")) {
				System.out.println("用户id为："+URLDecoder.decode(cookies[i].getValue(), "utf-8"));
				return true;
			}
		}
		return true;
//		res.sendRedirect("http://192.168.0.110:8080/test/demos/toLoginPage");
//		return false;

	}

	// 还没有调用Controller，还没返回modelAndView执行
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object arg2, ModelAndView arg3) throws Exception {
		System.out.println("这是第一个拦截器Interceptor1。。。postHandle:" + req.getSession().getAttribute("user"));

	}

	// 返回modelAndView之后执行
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object arg2, Exception arg3) throws Exception {
		System.out.println("这是第一个拦截器Interceptor1。。。afterCompletion:" + req.getSession().getAttribute("user"));

	}

}
