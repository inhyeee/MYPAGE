package com.human.test.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.test.dto.EmpDTO;

@Repository
public class EmpDAOImpl implements EmpDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List selectEmp() {

		List empList = sqlSession.selectList("id_emp.selectEmp");
		
		System.out.println("empList.size : " + empList.size());
		System.out.println("empList.get(0) : " + empList.get(0));
		
		return empList;
	}

	@Override
	public int updateEmp2(Map map) {

		int result = sqlSession.update("id_emp.updateEmp2", map);
		System.out.println("result : " + result);
		
//		sqlSession.insert("id_emp.updateEmp2", map);
//		sqlSession.delete("id_emp.updateEmp2", map);
		
		return result;
	}


	@Override
	public int deleteEmp2(int empno) {

		int result = sqlSession.delete("id_emp.deleteEmp2", empno);
		
		return result;
	}

	// 상세페이지
	@Override
	public EmpDTO detailEmp2(EmpDTO dto) {

		System.out.println(dto);
		EmpDTO empDTO = sqlSession.selectOne("id_emp.detailEmp2", dto);
		System.out.println(empDTO);
		return empDTO;
	}

	@Override
	public EmpDTO modifyList(EmpDTO dto) {
		
		System.out.println(dto);
		EmpDTO empDTO = sqlSession.selectOne("id_emp.modifyList", dto);
		System.out.println(empDTO);
		return empDTO;
		
	}
	
	// 수정
	@Override
	public int modifyEmp2(EmpDTO dto) {
		
		int result = sqlSession.update("id_emp.modifyEmp2", dto);
		System.out.println("result : " + result);
		
		return result;
	}

	
	@Override
	public int delEmp2(int empno) {
		
		int result = sqlSession.delete("id_emp.delEmp2", empno);
		
		return result;
	}

	@Override
	public int createEmp2(EmpDTO dto) {

		int empDTO = sqlSession.insert("id_emp.createEmp2", dto);
		System.out.println("create empDTO : " +  empDTO);
		
		return empDTO;
	}

	@Override
	public List selectEmp2() {
		
		List selectList = sqlSession.selectList("id_emp.selectEmp2");
		System.out.println("selectList.size() : " + selectList.size());
		
		return selectList;
	}

	@Override
	public int insertDummy(EmpDTO dto) {

		int result = sqlSession.update("id_emp.insertDummy", dto);
		System.out.println("insertDummy : " + result);
		
		return result;
	}

	@Override
	public List emp2page(EmpDTO dto) {

		List empList = sqlSession.selectList("id_emp.emp2page", dto);
		
		return empList;
	}

	@Override
	public int emp2total() {
		int total = sqlSession.selectOne("id_emp.emp2total");
		return total;
	}

	

	
	
	

}
