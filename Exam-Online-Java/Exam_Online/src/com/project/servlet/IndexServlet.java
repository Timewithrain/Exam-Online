package com.project.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String paperName = request.getParameter("test_name");
		paperName = paperName.toLowerCase();
		HttpSession session = request.getSession();
		session.setAttribute("paperName", paperName);
//		request.getRequestDispatcher("begin").forward(request, response);
	}
}
