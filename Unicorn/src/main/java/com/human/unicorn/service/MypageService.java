package com.human.unicorn.service;

import java.util.List;

import com.human.unicorn.dto.MypageDTO;

public interface MypageService {
	
	MypageDTO selectUser(MypageDTO dto);

	int totalCoupon(MypageDTO dto);
	
	int totalOrder(MypageDTO dto);
	
	List orderlist(MypageDTO dto);


	
}
