package com.excercise.routine.controller.ExList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.exlist.dto.ExListDto;
import com.excercise.routine.exlist.service.ExListService;

@Controller
@RequestMapping("/exlist")
public class ExListController {

	@Autowired
	public ExListService exListService;
	
	@GetMapping("/listhome")
	public String listhome(Model model) {
		model.addAttribute("list",exListService.selectAll());
		return "exlist_home";
	}
	
	@GetMapping("/insertform")
	public String insertform() {
		return "exlist_insertform";
	}
	
	@PostMapping("/insert")
	public String insert(ExListDto dto, Model model) {
		int res = exListService.insert(dto);
		
		if(res>0) {
			System.out.println("[exlist] : 운동 추가 성공");
			return "redirect:/exlist/listhome";
		} else {
			System.out.println("[exlist] : 운동 추가 실패");
			return "redirect:/exlist/insertform";
		}
	}
	
}
