package com.human.test2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	
	@RequestMapping("/testemp2")
	public String testemp2() {
		
		// db���� emp��� ��ü ��ȸ
		
		// model�� ��Ƽ� 
		
		// jsp : view-emp2-emp2_list�� �̵�
		return "emp2/emp2_list";
	}

}
