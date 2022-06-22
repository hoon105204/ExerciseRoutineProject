package com.excercise.routine.exlistlibrary.service;

import java.util.List;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;

public interface ExListLibraryService {

	public List<ExListLibraryDto> selectAll();
	public ExListLibraryDto selectOne(String liname);
	
}
