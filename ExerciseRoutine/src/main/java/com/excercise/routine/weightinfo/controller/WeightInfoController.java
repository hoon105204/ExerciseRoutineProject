package com.excercise.routine.weightinfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.service.MemberInfoService;
import com.excercise.routine.weightinfo.service.WeightInfoService;


@Controller
@RequestMapping("/mypage")
public class WeightInfoController {
	
	@Autowired
	private WeightInfoService weightservice;
	
	@Autowired
	private MemberInfoService userservice;
	
	@GetMapping("/mypagehome")
	public String root(Model model) {
		// MemberInfoDto dto = 세션에서 가져옴
		// model.addAttribute("weightinfo", weightservice.select(dto.getUserid()));
		// model.addAttribute("userinfo", userservice.selectOne(dto.getUserid()));
		model.addAttribute("weightlist", weightservice.select("user1"));
		model.addAttribute("userinfo", userservice.selectOne("user1"));
		return "mypage_home";
	}
	
	@GetMapping("/updateform")
	public String update(Model model, MemberInfoDto dto) {
		model.addAttribute(dto);
		return "mypage_updateform";
	}
	
}
