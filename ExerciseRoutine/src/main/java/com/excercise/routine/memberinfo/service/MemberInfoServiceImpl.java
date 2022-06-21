package com.excercise.routine.memberinfo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;

@Service
public class MemberInfoServiceImpl implements MemberInfoService {

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
		
		return 0;
	}

	@Override
	public int update(MemberInfoDto dto) {
		
		return 0;
	}

}
