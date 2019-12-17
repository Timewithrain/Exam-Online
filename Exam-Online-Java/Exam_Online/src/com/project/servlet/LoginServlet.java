package com.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.DAO.ProjectDAO;
import com.project.bean.User;

public class LoginServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		ProjectDAO projectDAO = new ProjectDAO();
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		PrintWriter writer = response.getWriter();
		User user = projectDAO.getUser(username);
		//判断用户是否存在
		if(user!=null) {
			//判断密码是否输入正确
			if(user.getPassword().equals(password)) {
				//设置用户名以记录登陆状态
				request.getSession().setAttribute("username", username);
				request.getRequestDispatcher("index.html").forward(request, response);
			}else {
				writer.println("用户名或密码错误，请重新登录！");
			}
		}
		projectDAO.close();
	}
}
