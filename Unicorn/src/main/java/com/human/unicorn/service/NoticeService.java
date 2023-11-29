package com.human.unicorn.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.NoticeDAO;
import com.human.unicorn.dto.NoticeDTO;

@Service
public class NoticeService {
	@Autowired
	NoticeDAO noticeDAO;

//	public List viewNotice() {
//		List noticeList = noticeDAO.viewNotice();
//
//		return noticeList;
//	}

	public Map noticePage(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

		// 이전 페이지의 마지막 숫자 + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
		NoticeDTO dto = new NoticeDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		int total = noticeDAO.noticeTotal();
		List<NoticeDTO> list = noticeDAO.noticePage(dto);


		Map map = new HashMap();
		map.put("list", list);
		map.put("total", total);

		return map;
	}
	
	public NoticeDTO noticeDetails(NoticeDTO dto) {
		NoticeDTO noticeDetails = noticeDAO.noticeDetails(dto);
		return noticeDetails;
	}
}
