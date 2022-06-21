package com.excercise.mp.memberinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excercise.mp.memberinfo.dto.MypageDto;
import com.excercise.mp.memberinfo.mapper.MpMemberInfoMapper;
import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.mapper.MemberInfoMapper;

@Service
public class MpMemberInfoServiceImpl implements MpMemberInfoService{

	@Autowired
	private MpMemberInfoMapper mpmemberinfo;
	@Autowired
	private MemberInfoMapper memberinfomapper;
	
	@Override
	public int insertWeight(MypageDto dto) {
		return mpmemberinfo.insertWeight(dto);
	}

	@Override
	public int update(MemberInfoDto dto) {	
		return memberinfomapper.update(dto);
	}

}
