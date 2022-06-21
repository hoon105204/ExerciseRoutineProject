package com.excercise.routine.controller.exboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.excercise.routine.exboard.dto.ExboardDto;
import com.excercise.routine.exboard.service.ExboardService;

@Controller
@RequestMapping("/exboard")
public class ExboardController {
	
	@Autowired
	private ExboardService exboardService;
	
	@GetMapping("/list")
	public String selectList(Model model) {
		List<ExboardDto> list = exboardService.selectList();
		model.addAttribute("list", list);
		return "exboardlist";
	}
	
	@GetMapping("/detail") 
	public String selectOne(Model model, int bno) {
		model.addAttribute("dto", exboardService.selectOne(bno));
		return "exboarddetail";
	}
	
	@GetMapping("/insertform")
	public String insertform() {
		return "exboardinsert";
	}
	
	@RequestMapping("/insert")
	public String insert(ExboardDto dto) {
		
		if(exboardService.insert(dto) > 0) {
			return "redirect:/exboard/list";
		} else {
			return "redirect:/exboard/insert";
		}
			
	}
	
	@GetMapping("/updateform")
	public String updateform(int bno, Model model) {
		model.addAttribute("dto", exboardService.selectOne(bno));
		
		return "exboardupdate";
	}
	
		
	@PostMapping("/update")
	public String update(ExboardDto dto) {
		
		if(exboardService.update(dto) > 0) {
			return "redirect:/exboard/detail?bno=" + dto.getBno();
		} else {
			return "redirect:/exboard/updateform?bno=" + dto.getBno();
		}
		
	}
	
	@GetMapping("/delete")
	public String delete(int bno, ExboardDto dto) {
		
		if(exboardService.delete(bno) > 0) {
			return "redirect:/exboard/list";
		} else {
			return "redirect:/exboard/detail?bno=" + dto.getBno();
		}
		
	}
	
}