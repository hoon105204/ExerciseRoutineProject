package com.excercise.mp.memberinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.mp.memberinfo.dto.MypageDto;
import com.excercise.routine.memberinfo.dto.MemberInfoDto;

@Mapper
public interface MpMemberInfoMapper {
	@Select(" SELECT * FROM MEMBERINFO WHERE USERID=#{userid}")
	MemberInfoDto selectList();
	
	@Insert(" INSERT INTO DAYWEIGHT VALUES (NULL, NOW(), #{weight}) ")
	int insertWeight(MypageDto dto);
	
	@Update(" UPDATE MEMBERINFO SET NAME=#{name}, BIRTH=#{birth}, GENDER=#{gender}, HEIGHT=#{height}, WEIGHT=#{weight} WHERE NAME=#{name}")
	int update(MemberInfoDto dto);
	
}
