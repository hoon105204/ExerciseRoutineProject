package com.excercise.routine.memberinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.weightinfo.dto.WeightInfoDto;

@Mapper
public interface MemberInfoMapper {
	
	@Select(" SELECT * FROM MEMBERINFO ORDER BY USERID DESC ")
	List<MemberInfoDto> selectList();
	
	@Select(" SELECT * FROM MEMBERINFO WHERE USERID=#{USERID} ")
	MemberInfoDto selectOne(String USERID);
	
	@Insert(" INSERT INTO MEMBERINFO VALUES(#{userid}, #{userpw}, "
			+ "#{username}, #{gender}, #{birth}, #{height}, #{weight}) ")
	int insert(MemberInfoDto dto);
	
	@Update(" UPDATE MEMBERINFO SET WEIGHT=#{dto.weight} WHERE USERID=#{dto.userid} ")
	int update(MemberInfoDto dto);
	
	
	@Select(" SELECT COUNT(USERID) FROM MEMBERINFO WHERE USERID =#{id}")
	int idCheck(String id);
	
	@Select(" SELECT * FROM MEMBERINFO WHERE USERID=#{userid} AND USERPW=#{userpw}")
	MemberInfoDto login(String userid, String userpw);

	@Update(" UPDATE MEMBERINFO SET USERNAME=#{dto.username}, BIRTH=#{dto.birth}, GENDER=#{dto.gender}, HEIGHT=#{dto.height}, WEIGHT=#{dto.weight} WHERE USERID=#{dto.userid} ")
	int updateMP(MemberInfoDto dto);
	
	
}
