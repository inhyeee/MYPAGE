package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List reviewTable() {
		System.out.println("reviewDAO check");
		List reviewlist = sqlSession.selectList("review.reviewTable");
		System.out.println("reviewDAO reviewList : " + reviewlist );
		return reviewlist;
	}

	@Override
	public List tmp_ReviewPage(ReviewDTO dto) {
		List reviewpageList = sqlSession.selectList("review.reviewTable", dto);
		System.out.println("reviewDAO check : " + reviewpageList);
		return reviewpageList;
	}

	@Override
	public int tmp_ReviewPageTotal() {
		int result = sqlSession.selectOne("review.reviewPageTotal");
		System.out.println("rewviewDAO check result : " + result);
		
		return result;
	}

	@Override
	public int modifyReview(ReviewDTO dto) {

		int result = sqlSession.update("review.modifyreview", dto);
		System.out.println("DAO modifyreveiw result check : " + result);
		
		return result;
	}

	@Override
	public int deleteReview(ReviewDTO dto) {
		int result = sqlSession.delete("review.deletereview", dto);
		return 0;
	}
	
	public List<InquiryDTO> viewInquiry(int productNo) {
		List<InquiryDTO> list = sqlSession.selectList("review.viewInquiry", productNo);
		return list;
	}
	
	public int insertInquiry(InquiryDTO dto) {
		int result = sqlSession.insert("review.insertInquiry", dto);
		return result;
	}

}
