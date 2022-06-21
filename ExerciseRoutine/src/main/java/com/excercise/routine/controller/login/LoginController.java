package com.excercise.routine.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.service.MemberInfoService;

@Controller
@RequestMapping("/sign")
public class LoginController {
	private MemberInfoService memberinfoservice;
	
	@GetMapping("login")
	public String login() {
		return "home";
	}
	
	@GetMapping("sign_up")
	public String sign_up(){
		return "sign_up";
	}
	
	@GetMapping("insert")
	public String insert(MemberInfoDto dto) {
		int res = memberinfoservice.insert(dto);
		if(res>0) {
			return "redirect:/";
		}else {
			return "redirect:/sign/sign_up";
		}
	}
	
	@GetMapping("check")
	public String check() {
		return null;
	}
}
