package com.human.unicorn.service;

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

}
