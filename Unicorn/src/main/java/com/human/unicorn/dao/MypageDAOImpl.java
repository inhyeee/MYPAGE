package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.MypageDTO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MypageDTO selectUser(MypageDTO dto) {

		MypageDTO mypageDTO = sqlSession.selectOne("mypage_info.selectUser", dto);
		
		return mypageDTO;
	}

	@Override
	public int totalCoupon(MypageDTO dto) {

		int total = sqlSession.selectOne("mypage_info.totalCoupon" , dto);
		
		return total;
	}

	@Override
	public int totalOrder(MypageDTO dto) {
		
		int totalOrder = sqlSession.selectOne("mypage_info.totalOrder", dto);
		
		return totalOrder;
	}

	@Override
	public List orderlist(MypageDTO dto) {
		
		List list = sqlSession.selectList("mypage_info.orderlist", dto);
		
		return list;
	}

}
