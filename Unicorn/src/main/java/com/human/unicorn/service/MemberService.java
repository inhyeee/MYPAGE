package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.MemberDTO;

public interface MemberService{
	
	MemberDTO loginUsers(MemberDTO dto);
	
	List getselectusers(MemberDTO dto);

	int signup(MemberDTO dto);

	MemberDTO findid(MemberDTO dto);

	MemberDTO findpw(MemberDTO dto);

	int setupdate(Map map);
}
