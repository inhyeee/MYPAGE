package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.InquiryDAO;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	InquiryDAO inquiryDAO;

	@Override
	public List selectInquiry() {

		List inquiry = inquiryDAO.selectInquiry();
		
		return inquiry;
	}

	@Override
	public int deleteInquiry(String[] list) {

		int deletelist = inquiryDAO.deleteInquiry(list);
		System.out.println("deletelist service : " + deletelist);
		
		return deletelist;
	}

}
