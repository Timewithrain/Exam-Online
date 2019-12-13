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
		String username = request.getParameter("u");
		String paperNum = request.getParameter("test_paper_no");
		System.out.println(paperNum);
		ProjectDAO projectDAO = new ProjectDAO();
		Paper paper = projectDAO.getPaper(paperNum);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(paper);
		response.getWriter().println(json);
		projectDAO.close();
	}
}
