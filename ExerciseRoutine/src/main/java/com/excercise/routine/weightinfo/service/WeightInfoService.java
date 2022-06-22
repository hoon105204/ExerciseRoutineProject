package com.excercise.routine.weightinfo.service;

import java.util.List;

import com.excercise.routine.weightinfo.dto.WeightInfoDto;

public interface WeightInfoService {
	public int insertWeight(WeightInfoDto dto);
	public List<WeightInfoDto> selectW(String USERID);
	public List<WeightInfoDto> selectD(String USERID);
}
