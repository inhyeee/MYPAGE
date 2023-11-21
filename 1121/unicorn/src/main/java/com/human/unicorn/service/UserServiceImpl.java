package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.UserDAO;
import com.human.unicorn.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public UserDTO selectUser(UserDTO dto) {

		UserDTO userDTO = userDAO.selectUser(dto);
		
		System.out.println("userDTO : " + userDTO);
		return userDTO;
	}

	@Override
	public int updateUser(UserDTO dto) {

		return userDAO.updateUser(dto);
	}

	
	
	
}
