package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.CouponDTO;

public interface CouponDAO {
	
	List selectCoupon(int userno);

	int updateCoupon(CouponDTO dto);

	int insertCoupon(CouponDTO dto);
	
}
