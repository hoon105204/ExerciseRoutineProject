package com.excercise.routine.exuser.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.excercise.routine.exuser.dto.ExUserDto;

//EXCERCISE_USER USERID(사용자ID), EXDATE(운동한 날짜), EXNO(운동 순서), EXNAME(운동이름), EXPART(파트), EXSET(n번째세트), EXVOL(중량), EXREP(반복횟수)
@Mapper
public interface ExUserMapper {

	// 사용자 운동기록 전체 가져오기
	@Select(" SELECT * FROM EXCERCISE_USER WHERE USERID=#{userid} ORDER BY USERID, EXDATE, EXNO, EXSET ")
	List<ExUserDto> selectAll(String userid);
	
	// 사용자 특정 날짜 운동기록 가져오기
	@Select(" SELECT * FROM EXCERCISE_USER WHERE USERID=#{userid} AND EXDATE=Date(#{exdate}) ORDER BY EXDATE, EXNO, EXSET ")
	List<ExUserDto> selectDate(String userid, String exdate);
	
	// 운동 전셋트 삭제
	@Delete(" DELETE FROM EXCERCISE_USER WHERE (USERID, EXDATE, EXNAME, EXNO) = (#{userid}, Date(#{exdate}), #{exname}, #{exno}) ")
	int deleteSet(ExUserDto dto);
	
	// 가장 마지막 셋트 삭제
	@Delete(" DELETE FROM EXCERCISE_USER WHERE (USERID, EXDATE, EXNAME, EXNO, EXSET) = (#{userid}, Date(#{exdate}), #{exname}, #{exno}, #{exset})")
	int deleteLastSet(ExUserDto dto);
	
	// 가장 큰 셋트값 찾아오기
	@Select(" SELECT max(EXSET) from EXCERCISE_USER where (USERID, EXDATE, EXNAME, EXNO) = (#{userid}, Date(#{exdate}), #{exname}, #{exno}) ")
	String selectBigSet(ExUserDto dto);
}
