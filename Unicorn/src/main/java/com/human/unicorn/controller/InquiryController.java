package com.human.unicorn.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.service.InquiryService;

@Controller
public class InquiryController {

	@Autowired
	InquiryService inquiryService;

	@RequestMapping("/inquiry")
	public String inquiry(Model model, HttpServletRequest request, InquiryDTO dto, HttpSession session) {
		
		MemberDTO userList = (MemberDTO) session.getAttribute("userList");
	
		if ( userList == null ) {
			return "main";
		} 
		
		int userNo = userList.getUserno();
		dto.setUserNo(userNo);
		
		
		int pageNum = 1;
		int countPerPage = 10;
		
		String tmp_pageNum = request.getParameter("pageNum");
		if(tmp_pageNum != null) {
			try {
				pageNum = Integer.parseInt(tmp_pageNum);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		String tmp_countPerPage = request.getParameter("countPerPage");
		if(tmp_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(tmp_countPerPage);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
//		List inquiry = inquiryService.selectInquiry(pageNum, countPerPage);
		Map map = inquiryService.selectInquiry(pageNum, countPerPage, dto);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		model.addAttribute("data", map);

		return "inquiry";

	}

	@RequestMapping(value = "deleteInquiry", method = RequestMethod.POST)
	public String deleteInquiry(HttpServletRequest request, InquiryDTO dto) {

		String[] list = request.getParameterValues("list_remove");
		
		if(list != null && list.length > 0) {
			
			for(int i=0; i<list.length; i++) {
			System.out.println("list " + i + ": " + i);
			}
			int deletelist = inquiryService.deleteInquiry(list);
			System.out.println("deletelist : " + deletelist);

		} else {
			System.out.println("삭제되었습니다.");
		}
		
		
		return "redirect:/inquiry";
	}

}
