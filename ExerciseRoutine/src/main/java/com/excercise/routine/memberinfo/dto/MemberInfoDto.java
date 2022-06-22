package com.excercise.routine.memberinfo.dto;

public class MemberInfoDto {
	private String userid;
	private String userpw;
	private String username;
	private String gender;
	private String birth;
	private float height;
	private float weight;
	public MemberInfoDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MemberInfoDto(String userid, String userpw, String username, String gender, String birth, float height,
			float weight) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.gender = gender;
		this.birth = birth;
		this.height = height;
		this.weight = weight;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public float getHeight() {
		return height;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	
	
}
