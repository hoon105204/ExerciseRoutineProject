package com.excercise.routine.exboard.dto;

import java.util.Date;

public class ExboardDto {
	private int bno;
	private String username;
	private String title;
	private String content;
	private Date bdate;
	
	public ExboardDto() {
		super();
	}
	
	public ExboardDto(int bno, String username, String title, String content, Date bdate) {
		super();
		this.bno = bno;
		this.username = username;
		this.title = title;
		this.content = content;
		this.bdate = bdate;
		
	}
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	
}
