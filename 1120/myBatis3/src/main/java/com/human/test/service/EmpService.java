package com.human.test.service;

import java.util.List;
import java.util.Map;

import com.human.test.dto.EmpDTO;

public interface EmpService {
	
	List empList();
	
	int setEmp2(Map map);
	
	int deleteEmp2(int empno);
	
	EmpDTO detailEmp2(EmpDTO dto);

	EmpDTO modifyList(EmpDTO dto);
	
	int modifyEmp2(EmpDTO dto);
	
	int delEmp2(int empno);
	
	int createEmp2(EmpDTO dto);
	
	List selectList();
	
	void insertDummy(int loop);
	
	Map getEmp2Page(int pageNum, int countPerPage);
	


}
