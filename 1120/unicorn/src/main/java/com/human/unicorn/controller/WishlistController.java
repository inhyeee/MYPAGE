package com.human.unicorn.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.unicorn.service.WishlistService;

@Controller
public class WishlistController {
	
	@Autowired
	WishlistService wishlistService;

	@RequestMapping("/wishlist")
	public String wishlist(Model model, HttpServletRequest request) {
		
		int pageNum = 1;	// ���� ������
		int countPerPage = 3;	// �� �������� �
		
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
		
		
//		List wishlist = wishlistService.selectWishlist(pageNum, countPerPage);
		Map map = wishlistService.selectWishlist(pageNum, countPerPage);
		System.out.println("map : " + map);
		
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		// data �ȿ� wishlist�� total ��
		model.addAttribute("data", map);
		
		return "mypage_Wishlist";
	}
	
	
	@RequestMapping(value="deleteWishlist", method=RequestMethod.POST)
	public String deletewishlist(
			@RequestParam("wishlistno")int wishlistno,
			Model model) {
		
		int result = wishlistService.deleteWishlist(wishlistno);
		System.out.println("delete ��� : " + result);
		
		model.addAttribute("result", result);
		
		return "redirect:/wishlist";
	}
	
	
}
