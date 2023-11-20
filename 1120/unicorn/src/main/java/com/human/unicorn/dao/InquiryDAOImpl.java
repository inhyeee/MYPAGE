package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.CouponDTO;

@Repository
public class InquiryDAOImpl implements InquiryDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List selectInquiry() {

		List inquiry = sqlSession.selectList("inquiry_info.selectInquiry");
		
		return inquiry;
	}


}
