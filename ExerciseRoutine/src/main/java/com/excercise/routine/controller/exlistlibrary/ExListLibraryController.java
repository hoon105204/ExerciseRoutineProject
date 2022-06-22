package com.excercise.routine.controller.exlistlibrary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
}
