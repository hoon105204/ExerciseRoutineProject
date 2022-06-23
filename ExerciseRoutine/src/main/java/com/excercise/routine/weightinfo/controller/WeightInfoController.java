package com.excercise.routine.weightinfo.controller;



import javax.servlet.http.HttpSession;

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
	public String root(HttpSession session, Model model) {
		String userid = (String)session.getAttribute("userid");
		//List<WeightInfoDto> map =  weightservice.selectW("user1");
		// model.addAttribute("weightinfo", weightservice.select(dto.getUserid()));
		// model.addAttribute("userinfo", userservice.selectOne(dto.getUserid()));
		model.addAttribute("weightlist", weightservice.selectW(userid));
		//model.addAttribute("weightdate", weightservice.selectD("user1"));
		model.addAttribute("userinfo", userservice.selectOne(userid));
		return "mypage_home";
	}
	
	@GetMapping("/updateform")
	public String updateform(HttpSession session, Model model, MemberInfoDto dto) {
		String userid = (String)session.getAttribute("userid");
		model.addAttribute("userinfo", userservice.selectOne(userid));
		return "mypage_updateform";
	}
	
	@GetMapping("/insert.do")
	public String update(WeightInfoDto dto, HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		MemberInfoDto dto2 = new MemberInfoDto();
		dto2.setUserid(userid);
		dto2.setWeight(dto.getWeight());
		if(weightservice.insertWeight(dto) > 0) {
			userservice.update(dto2);
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
	
	@GetMapping("/delete.do")
	public String delete(String userid, HttpSession session) {
		int res = userservice.delete(userid);
		
		if(res>0) {
			session.removeAttribute("userid");
			return "redirect:/sign/login";
		} else {
			return "redirect:/mypage/updateform";
		}
	}
	
}
