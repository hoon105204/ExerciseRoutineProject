package com.excercise.routine.exlist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.exlist.dto.ExListDto;
import com.excercise.routine.exlist.mapper.ExListMapper;

@Service
public class ExListServiceImpl implements ExListService {

	@Autowired
	public ExListMapper exListMapper;
	
	@Override
	public List<ExListDto> selectAll() {
		return exListMapper.selectAll();
	}

	@Override
	public ExListDto selectOne(String liname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(ExListDto dto) {
		return exListMapper.insert(dto);
	}

	@Override
	public int update(ExListDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMulti(List<String> linameList) {
		// TODO Auto-generated method stub
		return 0;
	}

}
