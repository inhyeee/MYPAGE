package com.human.unicorn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.service.InquiryService;

@Controller
public class InquiryController {

	@Autowired
	InquiryService inquiryService;

	@RequestMapping("/inquiry")
	public String inquiry(Model model) {

		List inquiry = inquiryService.selectInquiry();

		model.addAttribute("inquiry", inquiry);

		return "mypage_Inquiry";

	}

	@RequestMapping(value = "deleteInquiry", method = RequestMethod.POST)
	public String deleteInquiry(HttpServletRequest request, InquiryDTO dto) {

		String[] list = request.getParameterValues("list_remove");
		for(int i=0; i<list.length; i++) {
			System.out.println("list " + i + ": " + i);
		}

		int deletelist = inquiryService.deleteInquiry(list);
		System.out.println("deletelist : " + deletelist);

		
		return "redirect:/inquiry";
	}

}
