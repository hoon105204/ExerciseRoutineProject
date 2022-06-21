package com.excercise.routine;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
public class ExerciseRoutineApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExerciseRoutineApplication.class, args);
	}
	@GetMapping("/")
	public String root() {
		return "index";
	}
}
