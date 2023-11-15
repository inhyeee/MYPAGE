package com.human.test.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.test.dao.EmpDAO;
import com.human.test.dto.EmpDTO;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	EmpDAO empDAO;
	
	@Override
	public List empList() {
	
		List empList = empDAO.selectEmp();
		
		return empList;
	}

	@Override
	public int setEmp2(Map map) {

		return empDAO.updateEmp2(map);
		
//		return 0;
	}

	@Override
	public int deleteEmp2(int empno) {

		return empDAO.deleteEmp2(empno);
		
//		return 0;
	}

	@Override
	public EmpDTO detailEmp2(EmpDTO dto) {
		
		EmpDTO empDTO = empDAO.detailEmp2(dto);
		
		return empDTO;
	}

	@Override
	public EmpDTO modifyList(EmpDTO dto) {
		
		EmpDTO empDTO = empDAO.modifyList(dto);
		
		return empDTO;
	}
	
	@Override
	public int modifyEmp2(EmpDTO dto) {

		return empDAO.modifyEmp2(dto);
	}
	
	@Override
	public int delEmp2(int empno) {
		
		return empDAO.delEmp2(empno);
		
//		return 0;
	}

	@Override
	public int createEmp2(EmpDTO dto) {

		return empDAO.createEmp2(dto);
//		return 0;
	}

	@Override
	public List selectList() {
		List emp2List = empDAO.selectEmp2();
		return emp2List;
	}




}
