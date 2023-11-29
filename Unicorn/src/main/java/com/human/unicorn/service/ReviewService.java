package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.ReviewDTO;

public interface ReviewService {
	
	List reviewTable();
	
	Map getReviewPage(int pageNum, int countPerPage);
	
	int modifyReview(ReviewDTO dto);

	int deleteReview(ReviewDTO dto);
	
	public int insertInquiry(InquiryDTO dto);
	
	public List<InquiryDTO>  viewInquiry(int productNo);
	
}
