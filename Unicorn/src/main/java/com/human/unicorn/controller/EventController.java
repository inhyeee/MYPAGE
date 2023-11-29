package com.human.unicorn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.service.EventService;

@Controller
public class EventController {
	@Autowired
	EventService eventService;
	
	@RequestMapping("/event")
	public String eventList(Model model) {
		
		List list = eventService.eventList();
		
		model.addAttribute("eventList", list);
		
		return "event";
	}
	
	@RequestMapping("/eventDetails")
	public String eventDetails(@ModelAttribute EventDTO dto, Model model) {
		EventDTO eventDTO = eventService.eventDetails(dto);
		model.addAttribute("event", eventDTO);
		return "event_details";
	}
}
