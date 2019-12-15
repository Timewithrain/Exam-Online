package com.project.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.DAO.ProjectDAO;
import com.project.bean.Paper;

public class BeginExamServlet extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		String paperName = (String) request.getSession().getAttribute("paperName");
		ProjectDAO projectDAO = new ProjectDAO();
		Paper paper = projectDAO.getPaper(paperName);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(paper);
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(json);
		projectDAO.close();
	}
}
