package com.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.DAO.ProjectDAO;
import com.project.bean.User;

public class LoginServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
		ProjectDAO projectDAO = new ProjectDAO();
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		PrintWriter writer = response.getWriter();
		if(projectDAO.isUserExists(username)) {
			writer.println("登陆成功！");
		}else {
			writer.println("用户名或密码错误，请重新登录！");
		}
		projectDAO.close();
	}
}
