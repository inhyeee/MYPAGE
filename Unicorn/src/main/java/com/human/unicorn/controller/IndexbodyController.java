package com.human.unicorn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.unicorn.service.IndexbodyService;

@Controller
public class IndexbodyController {

	@Autowired
	IndexbodyService indexbodyService;
	

	// main indexbody page
	@RequestMapping("/main")
//	@RequestMapping(value="/emp2_update", method=RequestMethod.POST)
	public String indexbodyTable(Model m) {
		System.out.println("Controller check");
		System.out.println("tiles main check");
		   
		List list = indexbodyService.indexbodyTable();
		
		m.addAttribute("list", list);
		System.out.println("list.get(0) : " + list.get(0));
		
		return "main";
	}
	
	// about us page
	@RequestMapping("/aboutus")
	public String Aboutus() {
		System.out.println("Controller check");
		
		return "aboutus";
	}
	
	@RequestMapping("/support")
	public String support() {
		return "support";
	}
}
