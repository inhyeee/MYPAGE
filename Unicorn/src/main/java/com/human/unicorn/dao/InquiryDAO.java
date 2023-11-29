package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.InquiryDTO;

public interface InquiryDAO {
	
	List selectInquiry(InquiryDTO dto);
	
	int deleteInquiry(String[] list);
	
	int totalInquiry(InquiryDTO dto);

}
