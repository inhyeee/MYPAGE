package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.EventDAO;
import com.human.unicorn.dto.EventDTO;

@Service
public class EventService {
	@Autowired
	EventDAO eventDAO;
	
	public List eventList() {
		List list = eventDAO.eventList();
		return list;
	}
	
	public EventDTO eventDetails(EventDTO dto) {
		EventDTO eventDTO = eventDAO.eventDetails(dto);
		return eventDTO;
	}
}
