package com.project.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("LoginFilter init()");
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		//通过Session获取用户的登陆状态
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if(username==null) {
			request.getRequestDispatcher("login.html").forward(request, response);
		}
//		//当Session中用户名为空时，用户尚未登录，跳转至login页面
//		String url = request.getRequestURI();
//		System.out.println(url);
//		String quest = url.substring(url.length()-13, url.length());
//		//当用户请求register页面时，不进行跳转
//		if(username==null && !quest.equals("register.html")) {
//			request.getRequestDispatcher("login.html").forward(request, response);
//		}
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
	}
}
