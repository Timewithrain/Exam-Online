package com.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		PrintWriter writer = response.getWriter();
		if(username.equals("lalala")&&password.equals("12345")) {
			writer.println("µÇÂ½³É¹¦£¡");
		}else {
			writer.println("µÇÂ½Ê§°Ü£¬ÇëÖØÐÂµÇÂ¼£¡");
		}
	}
}
