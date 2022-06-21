package com.excercise.mp.memberinfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.mp.memberinfo.service.MpMemberInfoService;
import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.service.MemberInfoService;


@Controller
@RequestMapping("/mypage")
public class MpMemberInfoController {
	
	@Autowired
	private MpMemberInfoService mpmemberinfoservice;
	
	@Autowired
	private MemberInfoService memberinfoservice;
	
	@GetMapping("/home")
	public String mypage() {
		//model.addAttribute("info", memberinfoservice.selectOne("user1"));
		return "mypage";
	}
	
	@GetMapping("/update")
	public String update(MemberInfoDto dto) {
		int res = mpmemberinfoservice.update(dto);
		if(res != 0) {
			return "redirect:mypage";
		}else {
			return null;
		}
	}
	
}
