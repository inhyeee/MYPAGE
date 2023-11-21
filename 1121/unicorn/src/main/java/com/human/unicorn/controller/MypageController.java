package com.human.unicorn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MypageDTO;
import com.human.unicorn.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;
	
	@RequestMapping("/mypage")
	public String mypage(Model model, MypageDTO dto) {
		
		dto.setUserno(3);
		MypageDTO mypageDTO = mypageService.selectUser(dto);
		
		
		System.out.println("mypageController : " + mypageDTO);
		
		model.addAttribute("dto", mypageDTO);
		
		return "mypage_main";
	}
}
