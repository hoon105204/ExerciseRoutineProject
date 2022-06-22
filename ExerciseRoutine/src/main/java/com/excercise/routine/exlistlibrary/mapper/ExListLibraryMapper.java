package com.excercise.routine.exlistlibrary.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;

@Mapper
public interface ExListLibraryMapper {

	@Select(" SELECT * FROM EXCERCISE_LIST ORDER BY LIPART ")
	public List<ExListLibraryDto> selectAll();
	
	@Select(" SELECT * FROM EXCERCISE_LIST WHERE LINAME=#{liname} ")
	public ExListLibraryDto selectOne(String liname);
	
	@Insert(" INSERT INTO EXCERCISE_LIST VALUES(#{liname}, #{lipart}) ")
	int insert(ExListLibraryDto dto);
	
	@Update(" UPDATE EXCERCISE_LIST SET LINAME=#{liname} WHERE LIPART=#{lipart} ")
	int update(ExListLibraryDto dto);
	
	@Delete(" DELETE FROM EXCERCISE_LIST WHERE LINAME=#{liname} ")
	int delete(String liname);
	
}
