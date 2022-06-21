package com.excercise.routine.memberinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.mapper.MemberInfoMapper;

@Service
public class MemberInfoServiceImpl implements MemberInfoService {

	@Autowired
	private MemberInfoMapper memberinfomapper;
	
	@Override
	public List<MemberInfoDto> selectList() {
		
		return null;
	}

	@Override
	public MemberInfoDto selectOne(String USERID) {
		
		return null;
	}

	@Override
	public int insert(MemberInfoDto dto) {
		return memberinfomapper.insert(dto);
	}

	@Override
	public int update(MemberInfoDto dto) {
		
		return 0;
	}

}
