package com.excercise.routine.exuser.dto;

import java.util.Date;

public class ExUserDto {
	private String exname;
	private String expart;
	private int exrep;
	private int exset;
	private float exvol;
	private Date exdate;
	public ExUserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExUserDto(String exname, String expart, int exrep, int exset, float exvol, Date exdate) {
		super();
		this.exname = exname;
		this.expart = expart;
		this.exrep = exrep;
		this.exset = exset;
		this.exvol = exvol;
		this.exdate = exdate;
	}
	public String getExname() {
		return exname;
	}
	public void setExname(String exname) {
		this.exname = exname;
	}
	public String getExpart() {
		return expart;
	}
	public void setExpart(String expart) {
		this.expart = expart;
	}
	public int getExrep() {
		return exrep;
	}
	public void setExrep(int exrep) {
		this.exrep = exrep;
	}
	public int getExset() {
		return exset;
	}
	public void setExset(int exset) {
		this.exset = exset;
	}
	public float getExvol() {
		return exvol;
	}
	public void setExvol(float exvol) {
		this.exvol = exvol;
	}
	public Date getExdate() {
		return exdate;
	}
	public void setExdate(Date exdate) {
		this.exdate = exdate;
	}
	
	
	
	
	
	
	
	
}
