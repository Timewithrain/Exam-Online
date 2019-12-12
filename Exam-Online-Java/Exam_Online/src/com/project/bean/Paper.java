package com.project.bean;

import java.util.ArrayList;

public class Paper {
	private String paperName;
	private ArrayList<Topic> topics;
	
	public Paper() {}
	
	public Paper(String paperName,ArrayList<Topic> topics) {
		this.paperName = paperName;
		this.topics = topics;
	}

	public String getPaperName() {
		return paperName;
	}

	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}

	public ArrayList<Topic> getTopics() {
		return topics;
	}

	public void setTopics(ArrayList<Topic> topics) {
		this.topics = topics;
	}
	
	
	
}
