package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.MypageDTO;

public interface MypageDAO {
	
	MypageDTO selectUser(MypageDTO dto);
	
	int totalCoupon(MypageDTO dto);
	
	int totalOrder(MypageDTO dto);
	
	List orderlist(MypageDTO dto);

}
