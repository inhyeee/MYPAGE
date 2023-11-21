package com.human.unicorn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.service.CouponService;

@Controller
public class CouponController {
	
	@Autowired
	CouponService couponService;

	@RequestMapping("/coupon")
	public String coupon(Model model) {
		
		// 받아오는 값으로 바꿀 수 있음 
		int userno = 3;

		List coupon = couponService.selectCoupon(userno);
		
		model.addAttribute("coupon", coupon);
		model.addAttribute("userno", userno);
		
		return "mypage_Coupon";
	}
	
	@RequestMapping(value="updateCoupon", method=RequestMethod.POST)
	public String updateCoupon(@ModelAttribute CouponDTO dto) {
		
		int result = couponService.updateCoupon(dto);
		System.out.println("coupon result : " + result);
		
		return "redirect:/coupon";
	}

	@RequestMapping(value="insertCoupon", method=RequestMethod.POST)
	public String insertCoupon(@ModelAttribute CouponDTO dto) {
		
		int result = couponService.insertCoupon(dto);
		System.out.println("insert coupon result : " + result);
		
		return "redirect:/coupon";
	}
	
}
