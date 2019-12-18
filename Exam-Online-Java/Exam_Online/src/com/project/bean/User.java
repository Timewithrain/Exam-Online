package com.project.bean;

public class User {
	private String sno;
	private String username;
	private String password;
	private String dept;
	private int age;
	private String gender;
	private String email;
	
	public User(String username,String password) {
		this.username = username;
		this.password = password;
		this.email = null;
	}
	
	public User(String username,String password,String email) {
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	public User(String sno,String username,String password,String dept,int age,String gender,String email) {
		this.sno = sno;
		this.username = username;
		this.password = password;
		this.dept = dept;
		this.age = age;
		this.gender = gender;
		this.email = email;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	
}
