package com.project.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QueryServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) {
		String username = request.getParameter("u");
		String paper = request.getParameter("test_paper_no");
		
		
		
	}
}
