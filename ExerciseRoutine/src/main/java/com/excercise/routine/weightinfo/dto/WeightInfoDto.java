package com.excercise.routine.weightinfo.dto;

import java.util.Date;

public class WeightInfoDto {
	private String userid;
	private Date memberdate;
	private float weight;
	public WeightInfoDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WeightInfoDto(String userid, Date memberdate, float weight) {
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
