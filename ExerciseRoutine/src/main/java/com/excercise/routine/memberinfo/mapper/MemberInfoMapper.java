package com.excercise.routine.memberinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;

@Mapper
public interface MemberInfoMapper {
	
	@Select(" SELECT * FROM MEMBERINFO ORDER BY USERID DESC ")
	List<MemberInfoDto> selectList();
	
	@Select(" SELECT * FROM MEMBERINFO WHERE USERID=? ")
	public MemberInfoDto selectOne(String USERID);
	
	@Insert(" INSERT INTO MEMBERINFO VALUES(?, ?, ?, ?, ?, ?, ?) ")
	public int insert(MemberInfoDto dto);
	
	@Update(" UPDATE MEMBERINFO SET HEIGHT=? WHERE USERID=? ")
	public int update(MemberInfoDto dto);
}
