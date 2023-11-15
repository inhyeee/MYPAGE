package com.human.test.dao;

import java.util.List;
import java.util.Map;

import com.human.test.dto.EmpDTO;

public interface EmpDAO {

	List selectEmp();
	
	// update는 리턴값이 int 고정, 전달받는 값이 hashmap
	int updateEmp2(Map map);
	
	int deleteEmp2(int empno);

	EmpDTO detailEmp2(EmpDTO dto);

	EmpDTO modifyList(EmpDTO dto);
	
	int modifyEmp2(EmpDTO dto);
	
	int delEmp2(int empno);
	
	int createEmp2(EmpDTO dto);
	
	List selectEmp2();
	
	
}
