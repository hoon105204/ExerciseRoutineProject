package com.excercise.routine.weightinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.weightinfo.dto.WeightInfoDto;
import com.excercise.routine.weightinfo.mapper.WeightInfoMapper;

@Service
public class WeightInfoServiceImpl implements WeightInfoService{

	@Autowired
	private WeightInfoMapper mpmemberinfo;

	@Override
	public List<WeightInfoDto> select(String userid) {
		return mpmemberinfo.select(userid);
	}

	@Override
	public int insertWeight(WeightInfoDto dto) {
		return mpmemberinfo.insertWeight(dto);
	}
}
