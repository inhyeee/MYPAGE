package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.ReviewDTO;

public interface ReviewDAO {
	
	List reviewTable();
	
	List tmp_ReviewPage(ReviewDTO dto);
	
	int tmp_ReviewPageTotal();
	
	int modifyReview(ReviewDTO dto);
	
	int deleteReview(ReviewDTO dto);
	
	public List<InquiryDTO> viewInquiry(int productNo);
	
	public int insertInquiry(InquiryDTO dto);
	

}
