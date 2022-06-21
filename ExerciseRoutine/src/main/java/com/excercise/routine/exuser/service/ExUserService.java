package com.excercise.routine.exuser.service;

import java.util.Date;
import java.util.List;

import com.excercise.routine.exuser.dto.ExUserDto;

public interface ExUserService {
	public List<ExUserDto> selectAll();
	public List<ExUserDto> selectDate(Date exdate);
	public int insert(ExUserDto dto);
	public int update(ExUserDto dto);
	int delete(ExUserDto dto);
}
