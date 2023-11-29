package com.human.unicorn.service;

import java.util.List;

import com.human.unicorn.dto.CouponDTO;

public interface CouponService {
	
	List selectCoupon(int userno);

	int updateCoupon(CouponDTO dto);
	
	int insertCoupon(CouponDTO dto);
	
	List validCoupon();
	
	int countCoupon(CouponDTO dto);




}
