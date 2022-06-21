package com.excercise.routine.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

	@GetMapping("login")
	public String login() {
		return "home";
	}

	@GetMapping("sign_up")
	public String sign_up() {
		return "sign_up";
	}

	@GetMapping("insert")
	public String insert(MemberInfoDto dto) {
		int res = memberinfoservice.insert(dto);
		if (res > 0) {
			return "redirect:/";
		} else {
			return "redirect:/sign/sign_up";
		}
	}
	
	@RequestMapping("/list.do")
	public String list(Model model) {
		model.addAttribute("list",memberinfoservice.selectList());
		
		return "list";
	}
	
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		int cnt = memberinfoservice.idCheck(id);
		return cnt;
	}
}
