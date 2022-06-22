package com.excercise.routine.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calendar")
public class CalendarController {

	@GetMapping("/calendarhome")
	public String calendar() {
		return "calendar";
	}
	
	@RequestMapping("/excercizetoday")
	public String excercisetodaylost() {
		return "excercisetoday";
	}
}
