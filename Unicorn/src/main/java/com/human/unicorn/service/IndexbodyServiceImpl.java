package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.IndexbodyDAO;

@Service
public class IndexbodyServiceImpl implements IndexbodyService {

	@Autowired
	IndexbodyDAO indexbodyDAO;
	
	@Override
	public List indexbodyTable() {
		System.out.println("service check");
		
		List indexbodyList = indexbodyDAO.indexbodyTable();
		System.out.println("service indexbodyList : " + indexbodyList);
		return indexbodyList;
	}

}
