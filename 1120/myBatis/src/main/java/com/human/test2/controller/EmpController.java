package com.human.test2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	
	@RequestMapping("/testemp2")
	public String testemp2() {
		
		// db에서 emp목록 전체 조회
		
		// model에 담아서 
		
		// jsp : view-emp2-emp2_list로 이동
		return "emp2/emp2_list";
	}

}
