package com.human.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.test.dto.EmpDTO;
import com.human.test.service.EmpService;

@Controller
public class FormController {
	
// form으로 들어가면
	@RequestMapping("/form")
	public String form() {

// form.jsp로 리턴
		return "form";
	}
	

	
	@Autowired
	EmpService empService;
	
	
	@RequestMapping("/viewEMP")
//	@ResponseBody
	public String if_ename_like(@ModelAttribute EmpDTO dto, Model model) {
		
		List list = empService.if_ename_like(dto);
		
		model.addAttribute("List", list);
		
		return "form";
	}

}
