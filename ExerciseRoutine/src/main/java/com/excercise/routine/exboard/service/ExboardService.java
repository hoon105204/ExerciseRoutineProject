package com.excercise.routine.exboard.service;

import java.util.List;

import com.excercise.routine.exboard.dto.ExboardDto;

public interface ExboardService {
   
   public List<ExboardDto> selectList();
   public ExboardDto selectOne(int bno);
   public int insert(ExboardDto dto);
   public int update(ExboardDto dto);
   public int delete(int bno);
   
}