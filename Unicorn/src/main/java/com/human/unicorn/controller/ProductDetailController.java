package com.human.unicorn.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.ImgDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.OptionDTO;
import com.human.unicorn.dto.PaymentDTO;
import com.human.unicorn.dto.WishlistDTO;
import com.human.unicorn.service.ProductDetailService;
import com.human.unicorn.service.ReviewService;
import com.human.unicorn.dto.ProductDTO;

@Controller
public class ProductDetailController {

	@Autowired
	ProductDetailService productDetailService;
	
	@Autowired
	ReviewService reviewService;

	@RequestMapping("/productDetail")
	public String productdetailList(@RequestParam("productNo") int productNo, 
									@ModelAttribute ProductDTO productDTO, 
									@ModelAttribute OptionDTO optionDTO, 
									@ModelAttribute ImgDTO imgDTO,
									String key,
									HttpServletRequest req,
									Model model
			) {

		List<ProductDTO> productDetails = productDetailService.product(productDTO);
		model.addAttribute("productDetails", productDetails);

		List<OptionDTO> productOptions = productDetailService.productOption(optionDTO);
		model.addAttribute("productOptions", productOptions);

		List<ImgDTO> productImages = productDetailService.productImg(imgDTO);
		model.addAttribute("productImages", productImages);

		
		
		// 상품문의 불러오기
		List<InquiryDTO> list = reviewService.viewInquiry(productNo);

		model.addAttribute("inquiry", list);
		
		
		// 리뷰 불러오기
		int pageNum = 1;
		int countPerPage = 5;
		
		String tmp_pageNum = req.getParameter("pageNum");
		System.out.println("tmp_pageNum : " + tmp_pageNum);
		
		if(tmp_pageNum != null) {
			
			try {
				pageNum = Integer.parseInt(tmp_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String tmp_countPerPage = req.getParameter("countPerPage");
		System.out.println("tmp_pageNum : " + tmp_countPerPage);
		if(tmp_countPerPage != null) {
			
			try {
				countPerPage = Integer.parseInt(tmp_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		Map map = reviewService.getReviewPage(pageNum, countPerPage);
		
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		model.addAttribute("data", map);
		System.out.println(map);

		
		return "productDetail";

	}

	@RequestMapping("/cartinfo")
	public String cartinfo(@ModelAttribute CartDTO dto, @RequestParam int type, Model model, HttpSession session
			,@RequestParam("productNo") int productNo) {
		System.out.println(type);
		System.out.println(productNo);
		dto.setUserNo(3);
		if (type == 1) {
			int cart = productDetailService.cartinfo(dto);

		} else if (type == 2) {
			int wishlist = productDetailService.wishinfo(dto);

		} else if (type == 3) {
			PaymentDTO order = productDetailService.orderinfo(dto);
			model.addAttribute("cart", order);

			System.out.println(dto);

		}
		return "redirect:/productDetail?productNo=" + productNo;

	}
	
	
}
