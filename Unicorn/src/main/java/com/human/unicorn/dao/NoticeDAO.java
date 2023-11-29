package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.NoticeDTO;

@Repository
public class NoticeDAO {
	@Autowired
	SqlSession sqlSession;
	
	
	public List noticePage(NoticeDTO dto) {
		List<NoticeDTO> list = sqlSession.selectList("notice.noticePage", dto);
		
		return list;
	}
	
	public int noticeTotal() {
		int total = sqlSession.selectOne("notice.noticeTotal");
		return total;
	}

	public NoticeDTO noticeDetails(NoticeDTO dto) {
		NoticeDTO noticeDetails = sqlSession.selectOne("notice.noticeDetails", dto);

		return noticeDetails;
	}
}
