package com.excercise.routine.weightinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.excercise.routine.weightinfo.dto.WeightInfoDto;

@Mapper
public interface WeightInfoMapper {
	
	@Select(" SELECT * FROM DAYWEIGHT WHERE USERID=#{userid} ")
	List<WeightInfoDto> select(String userid);
	
	@Insert(" INSERT INTO DAYWEIGHT VALUES (NULL, NOW(), #{weight}) ")
	int insertWeight(WeightInfoDto dto);
		
}
