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
	public List<WeightInfoDto> selectW(String userid) {
		return mpmemberinfo.selectW(userid);
	}

	@Override
	public int insertWeight(WeightInfoDto dto) {
		return mpmemberinfo.insertWeight(dto);
	}

	@Override
	public List<WeightInfoDto> selectD(String USERID) {
		// TODO Auto-generated method stub
		return null;
	}


}
