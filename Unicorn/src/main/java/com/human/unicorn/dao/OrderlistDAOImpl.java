package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.OrderlistDTO;

@Repository
public class OrderlistDAOImpl implements OrderlistDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List selectOrderlist(OrderlistDTO dto) {
		
		List list = sqlSession.selectList("orderlist_info.selectOrderlist", dto);
		
		return list;
	}

}
