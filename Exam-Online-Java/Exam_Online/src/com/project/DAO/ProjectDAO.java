package com.project.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.project.bean.Paper;
import com.project.bean.Topic;
import com.project.bean.User;

public class ProjectDAO {
	private Connection connection = null;
	private PreparedStatement statement = null;

	public ProjectDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC","root","105036");
			connection.setAutoCommit(false);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public User getUser(String name) {
		String username = null;
		String password = null;
		String sql = "select * from user where username=?";
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, name);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				username = rs.getString("username");
				password= rs.getString("password");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new User(username,password);
	}
	
	public boolean isUserExists(String name) {
		boolean isExist = false;
		int count = 0;
		String sql = "select count(*) from user where username = ?";
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, name);
			ResultSet set = statement.executeQuery();
			if(set.next()) {
				count = Integer.parseInt(set.getString("count(*)"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(count!=0) {
			isExist = true;
		}
		return isExist;
	}
	
	public void addUser(User user) {
		String sql = "insert into user values(?,?,?)";
		if(user.getUsername()==null||user.getPassword()==null) {
			return;
		}
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getEmail());
			statement.execute();
			connection.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Paper getPaper(String paperNum) {
//		String sql = "select * from ?";
		String sql = "select * from "+paperNum;
		ArrayList<Topic> topics = new ArrayList<Topic>();
		try {
			statement = connection.prepareStatement(sql);
//			statement.setString(1 , paperNum);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("num");
				String topic = rs.getString("timu");
				ArrayList<String> answers = new ArrayList<String>();
				answers.add(rs.getString("A"));
				answers.add(rs.getString("B"));
				answers.add(rs.getString("C"));
				answers.add(rs.getString("D"));
				String rightAnswer = rs.getString("right");
				int grade = rs.getInt("grade");
				Topic t = new Topic(num+"",topic,answers,rightAnswer,grade);
				topics.add(t);
			}
			connection.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new Paper(paperNum,topics);
	}
	
	
	public void close() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
