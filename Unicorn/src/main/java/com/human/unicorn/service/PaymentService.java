package com.human.unicorn.service;

import java.util.List;

import com.human.unicorn.dto.PaymentDTO;

public interface PaymentService {
	
	List PaymentList();
	
	int insertPaymentDTO(PaymentDTO dto);
	

}
