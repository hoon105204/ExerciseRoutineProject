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
	
	@Select(" SELECT WEIGHT, MEMBERDATE FROM DAYWEIGHT WHERE USERID=#{userid} ")
	List<WeightInfoDto> selectW(String userid);
	@Select(" SELECT * FROM DAYWEIGHT WHERE USERID=#{userid} ")
	List<WeightInfoDto> selectD(String userid);
	
	@Insert(" INSERT INTO DAYWEIGHT VALUES (#{userid}, NOW(), #{weight}) ")
	int insertWeight(WeightInfoDto dto);
}
