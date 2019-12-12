package com.project.bean;

import java.util.ArrayList;

public class Topic {
	private String num;
	private String topic;
	private ArrayList<String> answers;
	private String rightAnswer;
	private int grade;
	
	public Topic() {}
	
	public Topic(String num,String topic,ArrayList<String> answers,String rightAnswer,int grade) {
		this.num = num;
		this.topic = topic;
		this.answers = answers;
		this.rightAnswer = rightAnswer;
		this.grade = grade;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public ArrayList<String> getAnswers() {
		return answers;
	}

	public void setAnswers(ArrayList<String> answers) {
		this.answers = answers;
	}

	public String getRightAnswer() {
		return rightAnswer;
	}

	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
}
