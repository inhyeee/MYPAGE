package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.CouponDTO;

public interface InquiryDAO {
	
	List selectInquiry();
	
	int deleteInquiry(String[] list);
}
