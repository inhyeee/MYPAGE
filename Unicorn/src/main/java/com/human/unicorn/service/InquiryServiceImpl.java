package com.human.unicorn.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.InquiryDAO;
import com.human.unicorn.dto.InquiryDTO;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	InquiryDAO inquiryDAO;

	@Override
	public Map selectInquiry(int pageNum, int countPerPage, InquiryDTO dto) {
		
		
		int startNum = 0, endNum = 0;
		
		startNum = ( (pageNum-1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
		
//		InquiryDTO dto = new InquiryDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		// 실제 보여줄 리스트
		List inquiry = inquiryDAO.selectInquiry(dto);
		
		// 전체 글 수
		int total = inquiryDAO.totalInquiry(dto);
		
		Map map = new HashMap();
		map.put("inquiry", inquiry);
		map.put("total", total);
		
		return map;
	}

	@Override
	public int deleteInquiry(String[] list) {

		int deletelist = inquiryDAO.deleteInquiry(list);
		System.out.println("deletelist service : " + deletelist);
		
		return deletelist;
	}

	


}
