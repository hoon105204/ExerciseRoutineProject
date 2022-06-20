package com.excercise.routine.exlist.dto;

public class ExListDto {
	private String liname;
	private String lipart;
	
	public ExListDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExListDto(String liname, String lipart) {
		super();
		this.liname = liname;
		this.lipart = lipart;
	}
	
	public String getLiname() {
		return liname;
	}
	public void setLiname(String liname) {
		this.liname = liname;
	}
	public String getLipart() {
		return lipart;
	}
	public void setLipart(String lipart) {
		this.lipart = lipart;
	}
	
	
}
