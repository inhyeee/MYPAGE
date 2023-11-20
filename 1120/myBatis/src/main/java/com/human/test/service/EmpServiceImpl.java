package com.human.test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.test.dao.EmpDAO;
import com.human.test.dto.EmpDTO;

//�������̽��� �ƴ϶� Ŭ������ @Service
@Service
public class EmpServiceImpl implements EmpService {

	// EmpDAO empDAO = new EmpDAOImpl(); �� @Autowired�� �ڵ����� �ϼ�����(IOC, �˾Ƽ� new ����)
	@Autowired
	EmpDAO empDAO;
	
	@Override
	public List empList() {

		List empList = empDAO.selectEmp();
		
		return empList;
	}

	public List empList20() {

		List empList = empDAO.selectEmp20();
		
		return empList;
	}

	@Override
	public List deptno(int deptno) {
		
		List empList = empDAO.deptno(deptno);
		
		return empList;
	}

	@Override
	public EmpDTO ename(EmpDTO dto) {

		EmpDTO empDTO = empDAO.ename(dto);
		
		return empDTO;
	}

	@Override
	public List if_ename_like(EmpDTO dto) {

		List empList = empDAO.if_ename_like(dto);
		
		return empList;
	}

	//////////////////////////////////////////////
	@Override
	public List searchEmp(EmpDTO dto) {
		
		List empList = empDAO.searchEmp(dto);
		
		return empList;
	}

	@Override
	public List foreach(List list) {

		List empList = empDAO.foreach(list);
		
		return empList;
	}
	
	////////////////////////////////////////////
	
	@Override
	public List getEmp2() {

		List empList = empDAO.selectEmp2();
		
		return empList;
	}

	////////////////////////////////////////////
	
	@Override
	public int setEmp2(Map map) {
		
		int result = empDAO.updateEmp2(map);
		
		return result;
	}

	@Override
	public void insertDummy(int loop) {

		for(int i=0; i<loop; i++) {
			EmpDTO dto = new EmpDTO();

			dto.setEname("���" +i);
			dto.setSal(i*100);
			
			// 10, 20, 30, 40 �����ư��鼭 �ֱ�
			int deptno = ((i % 4) +1) * 10;
			dto.setDeptno(deptno);
			
			empDAO.insertDummy(dto);
		}

	}

	@Override
	public Map getEmp2Page(int pageNum, int countPerPage) {
		
		int startNum = 0, endNum = 0;
		
		// ���� �������� ������ ���� +1
		startNum = ( (pageNum-1) * countPerPage ) + 1;
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage - 1;
		
		EmpDTO dto = new EmpDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		// ���񽺿��� �ٸ� dao �ΰ��� ����
		// ������ ����Ʈ�� �̾Ƽ� ����
		List list = empDAO.emp2page(dto);
		
		// ��ü ȸ������ �̾Ƽ� ����
		int total = empDAO.emp2total();
		
		Map map = new HashMap();
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
}
