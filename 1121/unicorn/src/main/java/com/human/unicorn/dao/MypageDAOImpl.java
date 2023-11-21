package com.human.unicorn.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.MypageDTO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MypageDTO selectUser(MypageDTO dto) {

		MypageDTO mypageDTO = sqlSession.selectOne("mypage_info.selectUser", dto);
		
		return mypageDTO;
	}

}
