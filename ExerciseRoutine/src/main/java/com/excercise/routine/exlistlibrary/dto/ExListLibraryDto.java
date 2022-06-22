package com.excercise.routine.exlistlibrary.dto;

public class ExListLibraryDto {
	private String liname;
	private String lipart;
	
	public ExListLibraryDto() {
		super();
	}
	
	public ExListLibraryDto(String liname, String lipart) {
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
