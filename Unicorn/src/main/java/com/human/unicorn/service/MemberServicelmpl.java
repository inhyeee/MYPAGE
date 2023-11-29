package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.MemberDAO;
import com.human.unicorn.dto.MemberDTO;

@Service
public class MemberServicelmpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	 public MemberDTO loginUsers(MemberDTO dto) {
		MemberDTO loginUsers = memberDAO.loginUsers(dto);
		
		return loginUsers;
	 }
	
	@Override
	public int signup(MemberDTO dto) {
		int data = memberDAO.signup(dto);
		
		return data;
	}
	
	@Override
	public List getselectusers(MemberDTO dto) {
		List userList = memberDAO.selectusers(dto);
		
		return userList;
	}
	
	@Override
	 public MemberDTO findid(MemberDTO dto) {
		MemberDTO findid = memberDAO.findid(dto);
		
		return findid;
	 }
	
	@Override
	 public MemberDTO findpw(MemberDTO dto) {
		MemberDTO findpw = memberDAO.findpw(dto);
		
		return findpw;
	 }
	
	@Override
	public int setupdate(Map map) {
		
		return memberDAO.update(map);
	}

}  
