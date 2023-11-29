package com.human.unicorn.controller;

import java.io.Writer;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.PaymentDTO;
import com.human.unicorn.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	PaymentService paymentService;
	

	@RequestMapping("/payment")
	public String paymentList(Model m, HttpSession request) {
		System.out.println("Controller check");
		

		
		return "payment"; 
	}
	
	@RequestMapping("/sendOrder")
	public String sendOrder(Model m, HttpSession request, @ModelAttribute PaymentDTO dto) {
		
		
		
		int result = paymentService.insertPaymentDTO(dto);
		
		
		System.out.println("controller result : " + result);
		System.out.println("dto.getOrderstatus() :" + dto.getOrderstatus());
		System.out.println("dto.getTotalprice() :" + dto.getTotalprice());
		
		
		return "paymentComplete";
	}
	
	
	
	
	
	//결제 완료
	@RequestMapping("paymentComplete")
	public String paymentcomplete() {
		System.out.println("Controller check");
		
		return "paymentComplete";
	}
	
	
}
