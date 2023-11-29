package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndexbodyDAOImpl implements IndexbodyDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List indexbodyTable() {
		System.out.println("DAO check");
		
		List list = sqlSession.selectList("id_indexbody.indexbodyTable");
		System.out.println("DAO indexbodyList : " + list);
		
		
		return list;
	}

}
