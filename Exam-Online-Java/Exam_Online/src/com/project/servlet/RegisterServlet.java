package com.project.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.DAO.ProjectDAO;
import com.project.bean.User;

public class RegisterServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sno = request.getParameter("sno");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String dept = request.getParameter("dept");
		String ageStr = request.getParameter("age");
		int age = Integer.parseInt((ageStr==null?"0":ageStr));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String check_pwd = request.getParameter("check-password");
		ProjectDAO projectDAO = new ProjectDAO();
		//验证用户名密码不为空
		if(username!=null&&password!=null) {
			//验证两次输入的密码一致
			if(password.equals(check_pwd)) {
				projectDAO.addUser(new User(sno,username,password,dept,age,gender,email));
				request.getRequestDispatcher("login.html").forward(request, response);
			}else {
				System.out.println(password);
				System.out.println(check_pwd);
				response.getWriter().println("<h3>两次输入密码不一致，请重新注册!</h3>");
			}
		}else {
			response.getWriter().println("<h3>注册失败，请重新注册!</h3>");
		}
		projectDAO.close();
	}
}
