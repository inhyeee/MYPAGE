package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.InquiryDTO;

public interface InquiryService {

	Map selectInquiry(int pageNum, int countPerPage, InquiryDTO dto);
	
	
	int deleteInquiry(String[] list);


}
