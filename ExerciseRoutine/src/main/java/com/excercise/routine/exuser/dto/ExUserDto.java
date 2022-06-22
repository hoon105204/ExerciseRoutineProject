package com.excercise.routine.exuser.dto;

public class ExUserDto {
	private String userid;
	private String exdate;
	private int exno;
	private String exname;
	private String expart;
	private int exset;
	private float exvol;
	private int exrep;
	private int excheck;
	public ExUserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExUserDto(String userid, String exdate, int exno, String exname, String expart, int exset, float exvol,
			int exrep, int excheck) {
		super();
		this.userid = userid;
		this.exdate = exdate;
		this.exno = exno;
		this.exname = exname;
		this.expart = expart;
		this.exset = exset;
		this.exvol = exvol;
		this.exrep = exrep;
		this.excheck = excheck;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getExdate() {
		return exdate;
	}
	public void setExdate(String exdate) {
		this.exdate = exdate;
	}
	public int getExno() {
		return exno;
	}
	public void setExno(int exno) {
		this.exno = exno;
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
	public int getExrep() {
		return exrep;
	}
	public void setExrep(int exrep) {
		this.exrep = exrep;
	}
	public int getExcheck() {
		return excheck;
	}
	public void setExcheck(int excheck) {
		this.excheck = excheck;
	}
	
	
}
