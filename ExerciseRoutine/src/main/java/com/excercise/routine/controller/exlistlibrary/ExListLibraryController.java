package com.excercise.routine.controller.exlistlibrary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.exlistlibrary.dto.ExListLibraryDto;
import com.excercise.routine.exlistlibrary.service.ExListLibraryService;


@Controller
@RequestMapping("/exlistlibrary")
public class ExListLibraryController {
	
	@Autowired
	public ExListLibraryService exListlibraryService;
	
	@GetMapping("/list")
	public String listhome(Model model) {
		model.addAttribute("list",exListlibraryService.selectAll());
		return "exlistlibrary list";
	}
	@GetMapping("/insertform")
	public String insertform() {
		return "exlistlibraryinsertform";
	}
	
	@PostMapping("/insert")
	public String insert(ExListLibraryDto dto) {
		int res = exListlibraryService.insert(dto);
		
		if(res>0) {
			System.out.println("[exlist] : 운동 추가 성공");
			return "redirect:/exlistlibrary/list";
		} else {
			System.out.println("[exlist] : 운동 추가 실패");
			return "redirect:/exlistlibrary/insertform";
		}
	}
	
	@GetMapping("/deleteform")
	public String deleteform(Model model) {
		model.addAttribute("list",exListlibraryService.selectAll());
		return "exlistlibrarydeleteform";
	}
	
	@GetMapping("/delete")
	public String delete(String liname) {
		int res = exListlibraryService.delete(liname);
		
		if(res>0) {
			return "redirect:/exlistlibrary/list";
		} else {
			return "redirect:/exlistlibrary/deleteform";
		}
	}
	
}
