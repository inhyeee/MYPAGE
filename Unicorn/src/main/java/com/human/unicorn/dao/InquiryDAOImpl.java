package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.InquiryDTO;

@Repository
public class InquiryDAOImpl implements InquiryDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List selectInquiry(InquiryDTO dto) {

		List inquiry = sqlSession.selectList("inquiry_info.selectInquiry", dto);
		
		return inquiry;
	}

	@Override
	public int deleteInquiry(String[] list) {
		
		int result = sqlSession.delete("inquiry_info.deleteInquiry", list);
		
		return result;
	}

	@Override
	public int totalInquiry(InquiryDTO dto) {

		int total = sqlSession.selectOne("inquiry_info.totalInquiry", dto);
		
		return total;
	}

	


}
