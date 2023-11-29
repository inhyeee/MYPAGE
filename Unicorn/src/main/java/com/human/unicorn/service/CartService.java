package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.CartDAO;
import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.PaymentDTO;

@Service
public class CartService {
	@Autowired
	CartDAO cartDAO;
	
	public List<CartDTO> viewCart(int userNo) {
		List<CartDTO> list = cartDAO.viewCart(userNo);
		return list;
	}
	
	public int deleteCart(List<String> deleteList) {
		int result = cartDAO.deleteCart(deleteList);
		return result;
	}
	
	public int modifyAmount(CartDTO dto) {
		int result = cartDAO.modifyAmount(dto);
		return result;
	}
	
	public List<PaymentDTO> cartToPayment(List<String> orderList) {
		List<PaymentDTO> list = cartDAO.cartToPayment(orderList);
		return list;
	}
}
