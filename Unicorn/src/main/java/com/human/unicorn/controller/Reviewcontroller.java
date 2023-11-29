package com.human.unicorn.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.ReviewDTO;
import com.human.unicorn.service.ReviewService;

@Controller
public class Reviewcontroller {

	@Autowired
	ReviewService reviewService;
	
	
	
	@RequestMapping("/writereview")
	public String reviewWrite(Model m) {
		
		System.out.println("reviewController check");
		
		List reviewList = reviewService.reviewTable();
		m.addAttribute("reviewList", reviewList);
		System.out.println("reviewList : " + reviewList);
		
		return "redirect:/productDetail";
	}
	
	
	@RequestMapping("reviewmodify")
	public String reviewModify(@ModelAttribute ReviewDTO dto) {
		System.out.println("modifyController check");
		
		int result = reviewService.modifyReview(dto);
		System.out.println("Controller modify : " + result);
		
		return "redirect:/productDetail";
	}
	
	
	@RequestMapping("deleteReview")
	public String deleteReview(@ModelAttribute ReviewDTO dto) {
		System.out.println("deleteController check");
		
		int result = reviewService.deleteReview(dto);
		
		return "redirect:/productDetail";
	}
	
	   @RequestMapping("/insertInquiry")
	   public String insertInquiry(@ModelAttribute InquiryDTO dto) {
	      int result = reviewService.insertInquiry(dto);
	      System.out.println("문의 등록 결과:" + result);
	      return "redirect:/productDetail?productno="+dto.getProductNo();
	   }
	
}
