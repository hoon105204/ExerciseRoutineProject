package com.excercise.routine.weightinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.weightinfo.dto.WeightInfoDto;

@Mapper
public interface WeightInfoMapper {
	
	@Select(" SELECT WEIGHT FROM DAYWEIGHT WHERE USERID=#{userid} ")
	List<WeightInfoDto> selectW(String userid);
	@Select(" SELECT MEMBERDATE FROM DAYWEIGHT WHERE USERID=#{userid} ")
	List<WeightInfoDto> selectD(String userid);
	@Insert(" INSERT INTO DAYWEIGHT VALUES (NULL, NOW(), #{weight}) ")
	int insertWeight(WeightInfoDto dto);
	
	
}
