package com.excercise.routine.calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
	
	@RequestMapping("/calendarhome")
	public String test() {
		return "calendar";
	}
}
