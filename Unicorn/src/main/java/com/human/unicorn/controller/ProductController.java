package com.human.unicorn.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	ProductService productService;

	@RequestMapping("/productList")
	public String productList(Model model, @ModelAttribute ProductDTO dto) {

		// 넘겨받은 dto를
//		System.out.println("productNo : " + dto.getProductNo());
//		System.out.println("productName : " + dto.getProductName());
//		System.out.println("popularity : " + dto.getPopularity());

		List<ProductDTO> productList = productService.productList();
		List<ProductDTO> top10List = productService.getTop10List();

		ProductDTO productDTO = productList.get(0);

		System.out.println("productNo : " + productDTO.getProductNo());
		System.out.println("productName : " + productDTO.getProductName());
		System.out.println("popularity : " + productDTO.getPopularity());

		System.out.println(productDTO);
		System.out.println(productList);

		model.addAttribute("productList", productList);
		model.addAttribute("top10List", top10List);
		model.addAttribute("productDTO", productDTO);

		return "productList";
	}

	@RequestMapping("/productBestList")
	public String productBestList(Model model, @ModelAttribute ProductDTO dto) {

		List<ProductDTO> top10List = productService.getTop10List();

		model.addAttribute("top10List", top10List);

		return "productBestList";
	}
	@RequestMapping("/increasePopularity")
	@ResponseBody
	public String increasePopularity(@RequestParam() int productNo) {
	    productService.increasePopularity(productNo);
	    System.out.println("인기도 / 제품넘버"+productNo);
	    return "Success";
	}
	
	
}
