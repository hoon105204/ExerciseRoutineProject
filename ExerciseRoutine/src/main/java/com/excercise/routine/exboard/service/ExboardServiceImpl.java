package com.excercise.routine.exboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.exboard.dto.ExboardDto;
import com.excercise.routine.exboard.mapper.ExboardMapper;

@Service
public class ExboardServiceImpl implements ExboardService {

	@Autowired
	ExboardMapper exboardMapper;
	
	@Override
	public List<ExboardDto> selectList() {
		return exboardMapper.selectList();
	}

	@Override
	public ExboardDto selectOne(int bno) {
		return exboardMapper.selectOne(bno);
	}

	@Override
	public int insert(ExboardDto dto) {
		return exboardMapper.insert(dto);
	}

	@Override
	public int update(ExboardDto dto) {
		return exboardMapper.update(dto);
	}

	@Override
	public int delete(int bno) {
		return exboardMapper.delete(bno);
	}



}