package com.excercise.routine.controller.ExList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
