package com.human.unicorn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.dto.UserDTO;
import com.human.unicorn.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/modifyList")
	public String modifyList(@ModelAttribute UserDTO dto, Model model, HttpSession session) {
		
		MemberDTO userList = (MemberDTO) session.getAttribute("userList");
		
		if ( userList == null ) {
			return "main";
		} 
		
		int userno = userList.getUserno();
		dto.setUserno(userno);

		
		UserDTO userDTO = userService.selectUser(dto);
		System.out.println("userDTO : " + userDTO);
		model.addAttribute("userDTO", userDTO);
		
		return "modifyUser";
	}
	
	@RequestMapping("/modifyUser")
	public String modifyUser(@ModelAttribute UserDTO dto, Model model) {
		
		int result = userService.updateUser(dto);
		System.out.println("modefy ��� : " + dto);
		System.out.println("result ��� : " + result);
		
		
		return "redirect:/modifyList";
		
		
	}
	
}
