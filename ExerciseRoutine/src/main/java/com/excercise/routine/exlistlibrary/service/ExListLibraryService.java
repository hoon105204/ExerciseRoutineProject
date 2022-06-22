package com.excercise.routine.exlistlibrary.service;

import java.util.List;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;

public interface ExListLibraryService {

	public List<ExListLibraryDto> selectAll();
	public ExListLibraryDto selectOne(String liname);
	public int insert(ExListLibraryDto dto);
	public int update(ExListLibraryDto dto);
	public int delete(String liname);
		
}
