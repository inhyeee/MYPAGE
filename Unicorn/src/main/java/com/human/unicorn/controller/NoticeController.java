package com.human.unicorn.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("/FAQ")
	public String viewFAQ() {
		return "FAQ";
	}
	
	// 공지사항 화면 
	@RequestMapping("/noticeList")
	public String viewNotice(Model model, HttpServletRequest request) {	
		
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
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		Map map = noticeService.noticePage(pageNum, countPerPage);
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		
		// 페이지 넘버 넘겨줌
		model.addAttribute("data", map);

		return "notice";
	}
	
	// 공지사항 게시물 화면
	@RequestMapping("/noticeDetails")
	public String noticeDetail(@ModelAttribute NoticeDTO dto, Model model) {
		NoticeDTO noticeDetails = noticeService.noticeDetails(dto);
		
		model.addAttribute("details", noticeDetails);
		return "notice_details";
	}
}
