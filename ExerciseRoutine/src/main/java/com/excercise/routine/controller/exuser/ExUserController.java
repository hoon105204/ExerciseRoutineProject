package com.excercise.routine.controller.exuser;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.exuser.dto.ExUserDto;
import com.excercise.routine.exuser.service.ExUserService;

@Controller
@RequestMapping("/exuser")
public class ExUserController {
	
	@Autowired
	public ExUserService exuserService;
	
	@GetMapping("/exuserhome")
	public String exuserhome(Model model, HttpServletRequest request) {
		// String userid = (String)request.getSession().getAttribute("userid");
		String userid = "user1";
		// 날짜와 연동 필요
		String now = "2022-06-22";
		
		List<ExUserDto> list = exuserService.selectDate(userid, now);
		model.addAttribute("list", list);
		return "exuser_home";
	}
	
	@GetMapping("/addform")
	public String addForm() {
		return "exuser_addform";
	}
	
	@GetMapping("/delete")
	public String deleteSet(ExUserDto dto) {
		
		int res = exuserService.deleteSet(dto);
		
		if(res>0) {
			System.out.println("삭제 성공");
			return "redirect:/exuser/exuserhome";
		} else {
			System.out.println("삭제 실패");
			return "redirect:/exuser/exuserhome";
		}
	}
	
	@GetMapping("/delLast")
	public String deleteLastSet(ExUserDto dto) {
		
		int res = exuserService.deleteLastSet(dto);
		
		if(res>0) {
			System.out.println("삭제 성공");
			return "redirect:/exuser/exuserhome";
		} else {
			System.out.println("삭제 실패");
			return "redirect:/exuser/exuserhome";
		}
	}
	
}
