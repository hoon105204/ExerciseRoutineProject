package com.excercise.routine.weightinfo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.service.MemberInfoService;
import com.excercise.routine.weightinfo.dto.WeightInfoDto;
import com.excercise.routine.weightinfo.service.WeightInfoService;


@Controller
@RequestMapping(value="/mypage", method= {RequestMethod.GET, RequestMethod.POST})
public class WeightInfoController {
	
	@Autowired
	private WeightInfoService weightservice;
	
	@Autowired
	private MemberInfoService userservice;
	
	@GetMapping("/mypagehome")
	public String root(Model model) {
		//List<WeightInfoDto> map =  weightservice.selectW("user1");
		
		
		// MemberInfoDto dto = 세션에서 가져옴
		// model.addAttribute("weightinfo", weightservice.select(dto.getUserid()));
		// model.addAttribute("userinfo", userservice.selectOne(dto.getUserid()));
		model.addAttribute("weightlist", weightservice.selectW("user1"));
		//model.addAttribute("weightdate", weightservice.selectD("user1"));
		model.addAttribute("userinfo", userservice.selectOne("user1"));
		return "mypage_home";
	}
	
	@GetMapping("/updateform")
	public String updateform(Model model, MemberInfoDto dto) {
		model.addAttribute("userinfo", userservice.selectOne("user1"));
		return "mypage_updateform";
	}
	
	@GetMapping("/insert.do")
	public String update(WeightInfoDto dto) {
		System.out.println(dto);
		if(weightservice.insertWeight(dto) > 0) {
			return "redirect:/mypage/mypagehome";
		} else {
			return "redirect:/mypage/updateform";
		}
	}
	
	@GetMapping("/updateres.do")
	public String updateres(MemberInfoDto dto) {
		
		if(userservice.updateMP(dto) > 0) {
			return "redirect:/mypage/mypagehome";
		} else {
			return "redirect:/mypage/updateform";
		}
	}
}
