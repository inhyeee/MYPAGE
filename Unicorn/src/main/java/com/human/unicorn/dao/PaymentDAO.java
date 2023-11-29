package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.PaymentDTO;

public interface PaymentDAO {

	List PaymentList();
	
	
	int insertPaymentDTO(PaymentDTO dto);
	
	
}
	