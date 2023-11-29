package com.human.unicorn.dao;

import com.human.unicorn.dto.UserDTO;

public interface UserDAO {
	
	UserDTO selectUser(UserDTO dto);
	
	int updateUser(UserDTO dto);

}
