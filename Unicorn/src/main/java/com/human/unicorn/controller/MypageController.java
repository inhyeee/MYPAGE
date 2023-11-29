package com.human.unicorn.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.dto.MypageDTO;
import com.human.unicorn.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;
	
	@RequestMapping("/mypage")
	public String mypage(Model model, MypageDTO dto, HttpSession session) {
		System.out.println("mypage Á¢¼Ó");
		
//		dto.setUserno(3);
		
		MemberDTO userList = (MemberDTO) session.getAttribute("userList");
		
		if ( userList == null ) {
			return "login";
		} 
		
		int userno = userList.getUserno();

		dto.setUserno(userno);
		MypageDTO mypageDTO = mypageService.selectUser(dto);
		
		System.out.println("mypageController : " + mypageDTO);
		
		int total = mypageService.totalCoupon(dto);
		System.out.println("totalCoupon: " + total);
		
		int totalOrder = mypageService.totalOrder(dto);
		System.out.println("totalOrder : " + totalOrder);
		
		List orderlist = mypageService.orderlist(dto);
		System.out.println("orderlist : " + orderlist);
		
		model.addAttribute("dto", mypageDTO);
		model.addAttribute("total", total);
		model.addAttribute("totalOrder", totalOrder);
		model.addAttribute("orderlist", orderlist);
		
		return "mypage";
		
		
	}
}
