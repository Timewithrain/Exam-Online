package com.project.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

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
		String servletPath =request.getServletPath();
		String methodName = servletPath.substring(1);
		System.out.println(methodName);
		
		//使用反射调用多个方法完成相应的请求
		try {
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (NoSuchMethodException | SecurityException | IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	//开始考试，向前端返回试卷
	public void begin(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String paperName = (String) request.getSession().getAttribute("paperName");
		ProjectDAO projectDAO = new ProjectDAO();
		Paper paper = projectDAO.getPaper(paperName);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(paper);
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(json);
		projectDAO.close();
	}
	
	//保存用户成绩
	public void saveGrade(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String userName = (String) request.getSession().getAttribute("username");
		String paperName = (String) request.getSession().getAttribute("paperName");
		int grade = Integer.parseInt(request.getParameter("grade"));
		ProjectDAO projectDAO = new ProjectDAO();
		projectDAO.setUserGrade(userName,paperName,grade);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(grade);
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(json);
		projectDAO.close();
	}
}
