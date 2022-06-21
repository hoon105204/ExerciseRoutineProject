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
		return memberinfomapper.selectList();
	}

	@Override
	public MemberInfoDto selectOne(String USERID) {
		return memberinfomapper.selectOne(USERID);
	}

	@Override
	public int insert(MemberInfoDto dto) {
		return memberinfomapper.insert(dto);
	}

	@Override
	public int update(MemberInfoDto dto) {	
		return memberinfomapper.update(dto);
	}

	@Override
	public int idCheck(String id) {
		return memberinfomapper.idCheck(id);
	}

	@Override
	public MemberInfoDto login(String userid, String userpw) {
		return memberinfomapper.login(userid, userpw);
	}

}
