package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.CouponDAO;
import com.human.unicorn.dto.CouponDTO;

@Service
public class CouponServiceImpl implements CouponService {
	
	@Autowired
	CouponDAO couponDAO;

	@Override
	public List selectCoupon(int userno) {

		List coupon = couponDAO.selectCoupon(userno);
		System.out.println("couponService result : " + coupon);
		
		return coupon;
	}

	@Override
	public int updateCoupon(CouponDTO dto) {
		
		int result = couponDAO.updateCoupon(dto);
		System.out.println("couponService result2 : " + result);
		
		return result;
	}

	@Override
	public int insertCoupon(CouponDTO dto) {

		int result = couponDAO.insertCoupon(dto);
		System.out.println("couponService insert: " + result);
		
		return result;
	}
}
