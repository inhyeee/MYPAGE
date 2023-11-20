package com.human.test.service;

import java.util.HashMap;
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

	@Override
	public void insertDummy(int loop) {

		// 전달받은 만큼 반복문
		for(int i=0; i<loop; i++) {
			EmpDTO dto = new EmpDTO();
			
			dto.setEname("직원" + i);
			dto.setSal(i * 10);
			
			// 10,20,30,40 번갈아 가면서 넣기
			int deptno = ((i % 4) + 1) * 10;
			dto.setDeptno(deptno);
			
			empDAO.insertDummy(dto);
			//DAO의 insertDummy에 넘겨줌 -> 값이 장착돼서 xml로 넘어감
			
			
		}
		
	
	}

	@Override
	public Map getEmp2Page(int pageNum, int countPerPage) {

		int startNum = 0, endNum = 0;
		
		//((i-1) * row) +1
		// 이전페이지의 마지막 숫자 +1
		startNum = ( (pageNum-1) * countPerPage) + 1;
		
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage -1;
		
		//DTO 셋팅해서 DAO로 넘긴다
		//DTO 는 필요할때만 생성하는게 좋다
		EmpDTO dto = new EmpDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

		// 전달인자로 값을 두개 보낼 수 없기때문에
		// dto에 담아서 dao로 보냄
		
		// 실제 보여줄 List
		List list = empDAO.emp2page(dto);
		
		// 전체 회원수
		int total = empDAO.emp2total();
		
		// 두개의 DAO를 컨트롤러로 보낸다
		Map map = new HashMap();
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}

}
