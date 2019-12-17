package com.project.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.DAO.ProjectDAO;
import com.project.bean.Paper;

public class QueryServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String userName= request.getParameter("userName");
		String examName = request.getParameter("test_paper_no");
		System.out.println(userName);
		System.out.println(examName);
		ProjectDAO projectDAO = new ProjectDAO();
		int grade= projectDAO.getUserGrade(userName, examName);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(grade);
		response.getWriter().println(json);
		projectDAO.close();
	}
}
