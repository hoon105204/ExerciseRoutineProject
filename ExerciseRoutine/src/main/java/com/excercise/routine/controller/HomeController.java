package com.excercise.routine.controller;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/",method = RequestMethod.POST)
@SpringBootApplication(exclude={SecurityAutoConfiguration.class})
public class HomeController {
	
	
}
