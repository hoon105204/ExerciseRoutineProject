package com.excercise.routine.exuser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.exuser.dto.ExUserDto;
import com.excercise.routine.exuser.mapper.ExUserMapper;

@Service
public class ExUserServiceImpl implements ExUserService{

	@Autowired
	public ExUserMapper exUserMapper;
	
	@Override
	public List<ExUserDto> selectAll(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ExUserDto> selectDate(String userid, String exdate) {
		return exUserMapper.selectDate(userid, exdate);
	}

	@Override
	public int insert(ExUserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ExUserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(ExUserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
