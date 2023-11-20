package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public UserDTO selectUser(UserDTO dto) {
		// user정보 가져오기
		UserDTO userDTO = sqlSession.selectOne("user_info.selectUser");
		return userDTO;
	}

	@Override
	public int updateUser(UserDTO dto) {
		// user정보 수정
		int result = sqlSession.update("user_info.updateUser", dto);
		System.out.println("update result : " + result);
		return result;
	}

}
