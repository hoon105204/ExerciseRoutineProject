package com.excercise.mp.memberinfo.service;

import java.util.List;

import com.excercise.mp.memberinfo.dto.MypageDto;
import com.excercise.routine.memberinfo.dto.MemberInfoDto;

public interface MpMemberInfoService {
	public int insertWeight(MypageDto dto);
	public int update(MemberInfoDto dto);
}
