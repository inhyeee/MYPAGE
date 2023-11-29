package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.OrderlistDTO;

public interface OrderlistDAO {

	List selectOrderlist(OrderlistDTO dto);
	
}
