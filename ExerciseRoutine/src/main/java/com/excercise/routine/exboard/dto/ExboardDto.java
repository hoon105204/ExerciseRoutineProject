package com.excercise.routine.exboard.dto;

import java.util.Date;

public class ExboardDto {
	private int bno;
	private String username;
	private String title;
	private String content;
	private Date bdate;
	private int btot;
	private int ball;
	
	public ExboardDto() {
		super();
	}
	
	public ExboardDto(int bno, String username, String title, String content, Date bdate, int btot, int ball) {
		super();
		this.bno = bno;
		this.username = username;
		this.title = title;
		this.content = content;
		this.bdate = bdate;
		this.btot = btot;
		this.ball = ball;
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
	public int getBtot() {
		return btot;
	}
	public void setBtot(int btot) {
		this.btot = btot;
	}
	public int getBall() {
		return ball;
	}
	public void setBall(int ball) {
		this.ball = ball;
	}
		
}
