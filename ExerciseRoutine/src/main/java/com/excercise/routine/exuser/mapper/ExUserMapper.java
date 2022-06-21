package com.excercise.routine.exuser.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.exuser.dto.ExUserDto;

//EXCERCISE_USER EXNAME(이름), EXPART(파트), EXREP(횟수), EXSET(세트수), EXVOL(중량), EXDATE(운동한 날짜)
@Mapper
public interface ExUserMapper {

	// 전체 가져오기
	@Select(" SELECT * FROM EXCERCISE_USER ORDER BY EXDATE ")
	List<ExUserDto> selectOne();
	
	// 특정 날짜 운동기록 가져오기
	@Select(" SELECT * FROM EXCERCISE_USER WHERE EXDATE=#{exdate} ")
	List<ExUserDto> selectOne(Date exdate);
	
	@Insert(" INSERT INTO EXCERCISE_USER VALUES(#{exname}, #{expart}, #{exrep}, #{exset}, #{exvol}, #{exdate}) ")
	int insert(ExUserDto dto);
	
	// 특정 세트에서 횟수와 무게 수정
	@Update(" UPDATE EXCERCISE_USER SET EXREP=#{exrep}, EXVOL=#{exvol} WHERE (EXNAME, EXSET, EXDATE) = (#{exname}, #{exset}, #{exdate}) ")
	int update(ExUserDto dto);
	
	// 특정 세트 삭제
	@Delete(" DELETE FROM EXCERCISE_USER WHERE (EXNAME, EXSET, EXDATE) = (#{exname}, #{exset}, #{exdate}) ")
	int delete(ExUserDto dto);
	
}
