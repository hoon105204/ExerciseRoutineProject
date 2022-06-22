package com.excercise.routine.exlist.service;

import java.util.List;

import com.excercise.routine.exlist.dto.ExListDto;

public interface ExListService {
	public List<ExListDto> selectAll();
	public ExListDto selectOne(String liname);
	public int insert(ExListDto dto);
	public int update(ExListDto dto);
	public int delete(String liname);
}
