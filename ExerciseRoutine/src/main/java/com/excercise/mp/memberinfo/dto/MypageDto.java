package com.excercise.mp.memberinfo.dto;

import java.util.Date;

public class MypageDto {
	private String userid;
	private Date memberdate;
	private float weight;
	public MypageDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MypageDto(String userid, Date memberdate, float weight) {
		super();
		this.userid = userid;
		this.memberdate = memberdate;
		this.weight = weight;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getMemberdate() {
		return memberdate;
	}
	public void setMemberdate(Date memberdate) {
		this.memberdate = memberdate;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	
}
