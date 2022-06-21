package com.excercise.routine.exlist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.exlist.dto.ExListDto;

//EXCERCISE_LIST LINAME(이름), LIPART(타입)
@Mapper
public interface ExListMapper {

	@Select(" SELECT * FROM EXCERCISE_LIST ORDER BY LIPART ")
	List<ExListDto> selectAll();
	
	@Select(" SELECT * FROM EXCERCISE_LIST WHERE LINAME=#{liname} ")
	ExListDto selectOne(String liname);
	
	@Insert(" INSERT INTO EXCERCISE_LIST VALUES(#{liname}, #{lipart}) ")
	int insert(ExListDto dto);
	
	@Update(" UPDATE EXCERCISE_LIST SET LINAME=#{liname} WHERE LIPART=#{lipart} ")
	int update(ExListDto dto);
	
	@Delete(" DELETE FROM EXCERCISE_LIST WHERE LINAME=#{liname} ")
	int delete(String liname);
}
