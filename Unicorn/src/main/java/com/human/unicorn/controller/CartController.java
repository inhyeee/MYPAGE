package com.human.unicorn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.dto.PaymentDTO;
import com.human.unicorn.service.CartService;

@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("/cart")
	public String viewCart(Model model, HttpSession session) {
		MemberDTO userList = (MemberDTO) session.getAttribute("userList");
		boolean flag = false;	// �α��� ���θ� ���� flag
		if(userList != null) {
			System.out.println(userList.getUserno());
			
			// ���ǿ� �ִ� userNo�� ��ġ�ϴ� ������ ������
			List<CartDTO> list = (List<CartDTO>)cartService.viewCart(userList.getUserno());
			flag = true;
			model.addAttribute("flag", flag);
			model.addAttribute("cartList", list);
		}else {
			model.addAttribute("flag", flag);
		}

		return "cart";
	}
	
	@RequestMapping("/clickBtn")
	public String clickBtn(@RequestParam("btn") String btn,
							@RequestParam("cartNoList") List<String> checkList,
							@RequestParam("deliveryFee") int deliveryPrice,
							Model model) {
		
		System.out.println("click: " + btn);
		System.out.println("deliveryPrice:" + deliveryPrice);
		if(checkList != null) {
			for(String c : checkList) {
				System.out.println("deleteList: " + c);
			}	
		}
		
		// �����Ҷ� 
		if(btn.equals("����")) {
			
			boolean delete = true;
			int deleteResult = cartService.deleteCart(checkList);
			System.out.println("�������:" + deleteResult);
			model.addAttribute("delete", delete);
			
		// �ֹ��Ҷ�
		}else if(btn.equals("�ֹ��ϱ�")) {
			List<PaymentDTO> list = cartService.cartToPayment(checkList);
			model.addAttribute("cart", list);
			model.addAttribute("deliveryFee", deliveryPrice);
			
			System.out.println(list.get(0).getPrice());
			return "payment";
		}
		
		return "redirect:/cart";
	}
	
	@RequestMapping("/modify")
	public String modifyAmount(@ModelAttribute CartDTO dto, Model model) {
	
		System.out.println("cartno:" + dto.getCartNo());
		System.out.println("amount:" + dto.getCartCount());
		
		int result = cartService.modifyAmount(dto);
		System.out.println("�����Ϸ�:" + result);
		
		return "redirect:/cart";
	}
}

