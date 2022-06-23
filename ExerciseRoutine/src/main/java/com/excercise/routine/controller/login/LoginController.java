package com.excercise.routine.controller.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	
	@GetMapping("home")
	public String home() {
		return "home";
	}
	@PostMapping("login")
	public String login(HttpServletRequest request, Model model, String userid, String userpw) {
		if(memberinfoservice.login(userid, userpw)!=null) {
			model.addAttribute("userid",userid);
			request.getSession().setAttribute("userid", userid);
			request.getSession().setAttribute("msg", "");
			return "home";
		} else{
			request.getSession().setAttribute("msg", "아이디 또는 비밀번호를 확인해주세요");
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

	@GetMapping("sign_up")
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
