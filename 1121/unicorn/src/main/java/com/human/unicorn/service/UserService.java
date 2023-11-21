package com.human.unicorn.service;

import com.human.unicorn.dto.UserDTO;

public interface UserService {

	UserDTO selectUser(UserDTO dto);
	
	int updateUser(UserDTO dto);

	
}
