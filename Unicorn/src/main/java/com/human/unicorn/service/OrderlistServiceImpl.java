package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.OrderlistDAO;
import com.human.unicorn.dto.OrderlistDTO;

@Service
public class OrderlistServiceImpl implements OrderlistService {
	
	@Autowired
	OrderlistDAO orderlistDAO;

	@Override
	public List selectOrderlist(OrderlistDTO dto) {

		List list = orderlistDAO.selectOrderlist(dto);
		
		return list;
	} 

}
