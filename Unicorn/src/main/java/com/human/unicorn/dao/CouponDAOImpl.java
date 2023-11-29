package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.CouponDTO;

@Repository
public class CouponDAOImpl implements CouponDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List selectCoupon(int userno) {

		List coupon = sqlSession.selectList("coupon_info.selectCoupon", userno);
		
		return coupon;
	}

	@Override
	public int updateCoupon(CouponDTO dto) {

		int result = sqlSession.update("coupon_info.updateCoupon", dto);
		
		return result;
	}

	@Override
	public int insertCoupon(CouponDTO dto) {

		int result = sqlSession.insert("coupon_info.insertCoupon", dto);
		
		return result;
	}

	@Override
	public List validCoupon() {

		List list = sqlSession.selectList("coupon_info.validCoupon");
		
		return list;
	}

	@Override
	public int countCoupon(CouponDTO dto) {
		
		int result = sqlSession.selectOne("coupon_info.countCoupon", dto);
		
		return result;
	}

	



	

}
