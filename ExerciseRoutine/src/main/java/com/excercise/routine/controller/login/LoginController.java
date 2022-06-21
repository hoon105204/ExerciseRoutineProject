package com.excercise.routine.controller.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.excercise.routine.memberinfo.dto.MemberInfoDto;
import com.excercise.routine.memberinfo.service.MemberInfoService;

@Controller
@RequestMapping("/sign")
public class LoginController {
	
	@Autowired
	private MemberInfoService memberinfoservice;

	@PostMapping("login")
	public String login(Model model, String userid, String userpw) {
		if(memberinfoservice.login(userid, userpw)!=null) {
			model.addAttribute("userid",userid);
			return "home";
		} else {
			return "redirect:/";
		}
	}
	
	@PostMapping("asd")
	public String selectList(Model model) {
		List<MemberInfoDto> list = memberinfoservice.selectList();
		model.addAttribute("list",list);
		return "";
	}
	
	@PostMapping("asdf")
	public String selectOne(Model model, String userid) {
		model.addAttribute("dto",memberinfoservice.selectOne(userid));
		return "";
	}

	@PostMapping("sign_up")
	public String sign_up() {
		return "sign_up";
	}

	@PostMapping("insert")
	public String insert(MemberInfoDto dto) {
		int res = memberinfoservice.insert(dto);
		if (res > 0) {
			return "redirect:/";
		} else {
			return "redirect:/sign/sign_up";
		}
	}

	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		int cnt = memberinfoservice.idCheck(id);
		return cnt;
	}
	
	
}
