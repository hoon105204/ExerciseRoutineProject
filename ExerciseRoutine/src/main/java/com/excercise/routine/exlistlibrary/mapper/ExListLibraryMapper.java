package com.excercise.routine.exlistlibrary.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;

@Mapper
public interface ExListLibraryMapper {

	@Select(" SELECT * FROM EXCERCISE_LIST ORDER BY LIPART ")
	public List<ExListLibraryDto> selectAll();
	
	@Select(" SELECT * FROM EXCERCISE_LIST WHERE LINAME=#{liname} ")
	public ExListLibraryDto selectOne(String liname);
	
}
