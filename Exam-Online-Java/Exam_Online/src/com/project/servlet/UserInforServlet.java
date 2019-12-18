package com.project.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.DAO.ProjectDAO;
import com.project.bean.User;

public class UserInforServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String userName = (String) request.getSession().getAttribute("username");
		ProjectDAO projectDAO = new ProjectDAO();
		User user = projectDAO.getUser(userName);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(user);
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(json);
		
	}
}
