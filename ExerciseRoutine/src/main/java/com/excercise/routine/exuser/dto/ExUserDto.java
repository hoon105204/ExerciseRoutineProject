package com.excercise.routine.exuser.dto;

public class ExUserDto {
	private String exname;
	private String expart;
	private int rep;
	private int set;
	private float vol;
	public ExUserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExUserDto(String exname, String expart, int rep, int set, float vol) {
		super();
		this.exname = exname;
		this.expart = expart;
		this.rep = rep;
		this.set = set;
		this.vol = vol;
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
	public int getRep() {
		return rep;
	}
	public void setRep(int rep) {
		this.rep = rep;
	}
	public int getSet() {
		return set;
	}
	public void setSet(int set) {
		this.set = set;
	}
	public float getVol() {
		return vol;
	}
	public void setVol(float vol) {
		this.vol = vol;
	}
	
	
	
	
}
