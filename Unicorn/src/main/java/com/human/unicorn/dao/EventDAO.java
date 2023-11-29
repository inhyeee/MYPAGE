package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.EventDTO;

@Repository
public class EventDAO {
	@Autowired
	SqlSession sqlSession;
	
	public List eventList() {
		List eventList = sqlSession.selectList("event.eventList");
		return eventList;
	}
	
	
	public EventDTO eventDetails(EventDTO dto) {
		EventDTO eventDTO = sqlSession.selectOne("event.eventDetails", dto);
		return eventDTO;
	}
}
