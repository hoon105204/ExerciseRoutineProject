package com.excercise.routine.exuser.service;

import java.util.List;

import com.excercise.routine.exuser.dto.ExUserDto;

public interface ExUserService {
	public List<ExUserDto> selectAll(String userid);
	public List<ExUserDto> selectDate(String userid, String exdate);
	public int insert(ExUserDto dto);
	public int update(ExUserDto dto);
	int deleteSet(ExUserDto dto);
	int deleteLastSet(ExUserDto dto);
}
