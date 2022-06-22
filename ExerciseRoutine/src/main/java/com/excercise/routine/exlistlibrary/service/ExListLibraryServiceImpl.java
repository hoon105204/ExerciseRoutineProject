package com.excercise.routine.exlistlibrary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;
import com.excercise.routine.exlistlibrary.mapper.ExListLibraryMapper;

@Service
public class ExListLibraryServiceImpl implements ExListLibraryService {

	@Autowired
	public ExListLibraryMapper exListlivraryMapper;
	
	@Override
	public List<ExListLibraryDto> selectAll() {
		return exListlivraryMapper.selectAll();
	}

	@Override
	public ExListLibraryDto selectOne(String liname) {
		return exListlivraryMapper.selectOne(liname);
	}

}
