package com.excercise.routine.memberinfo.service;

import java.util.List;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;

public interface MemberInfoService {
	public List<MemberInfoDto> selectList();
	public MemberInfoDto selectOne(String USERID);
	public int insert(MemberInfoDto dto);
	public int update(MemberInfoDto dto);
	public int idCheck(String id);
}
