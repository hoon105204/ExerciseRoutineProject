package com.excercise.routine.exboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.excercise.routine.exboard.dto.ExboardDto;

@Mapper
public interface ExboardMapper {
   
   @Select(" SELECT BNO, USERNAME, TITLE, CONTENT, BDATE FROM EXBOARD ORDER BY BNO DESC ")
   public List<ExboardDto> selectList();
   
   @Select(" SELECT BNO, USERNAME, TITLE, CONTENT, BDATE FROM EXBOARD WHERE BNO = #{bno} ")
   public ExboardDto selectOne(int bno);
   
   @Insert(" INSERT INTO EXBOARD VALUES(NULL, #{username}, #{title}, #{content}, NOW()) ")
   public int insert(ExboardDto dto);
   
   @Update(" UPDATE EXBOARD SET TITLE = #{title}, CONTENT = #{content} WHERE BNO = #{bno} ")
   public int update(ExboardDto dto);
   
   @Delete(" DELETE FROM EXBOARD WHERE BNO = #{bno} ")
   public int delete(int bno);

   
}