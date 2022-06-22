package com.excercise.routine.controller.exuser;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
		String userid = (String)request.getSession().getAttribute("userid");
		Date datenow = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		String now = format.format(datenow);
		
		List<ExUserDto> list = exuserService.selectDate(userid, now);
		model.addAttribute("list", list);
		model.addAttribute("date", now);
		return "exuser_home";
	}
	
	@GetMapping("/exuserhome2")
	public String exuserhome2(Model model, HttpServletRequest request, String date) {
		String userid = (String)request.getSession().getAttribute("userid");

		List<ExUserDto> list = exuserService.selectDate(userid, date);
		model.addAttribute("list", list);
		model.addAttribute("date", date);
		return "exuser_home";
	}
	
	@GetMapping("/exuserhome11")
	public String exuserhome11(Model model, HttpServletRequest request) {
		String userid = (String)request.getSession().getAttribute("userid");
		Date datenow = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		String now = format.format(datenow);
		
		List<ExUserDto> list = exuserService.selectDate(userid, now);
		model.addAttribute("list", list);
		model.addAttribute("date", now);
		return "exuser_home2";
	}
	
	@GetMapping("/exuserhome12")
	public String exuserhome12(Model model, HttpServletRequest request, String date) {
		String userid = (String)request.getSession().getAttribute("userid");

		List<ExUserDto> list = exuserService.selectDate(userid, date);
		model.addAttribute("list", list);
		model.addAttribute("date", date);
		return "exuser_home2";
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
