package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.MypageDAO;
import com.human.unicorn.dto.MypageDTO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDAO mypageDAO;
	
	@Override
	public MypageDTO selectUser(MypageDTO dto) {

		MypageDTO mypageDTO = mypageDAO.selectUser(dto);
		System.out.println("mypageService : " + mypageDTO);
		
		return mypageDTO;
	}

	@Override
	public int totalCoupon(MypageDTO dto) {

		int total = mypageDAO.totalCoupon(dto);
		System.out.println("service/total : " + total );
		
		return total;
	}

	@Override
	public int totalOrder(MypageDTO dto) {
		
		int totalOrder = mypageDAO.totalOrder(dto);
		
		return totalOrder;
	}

	@Override
	public List orderlist(MypageDTO dto) {
		
		List list = mypageDAO.orderlist(dto);
		
		return list;
	}

}
