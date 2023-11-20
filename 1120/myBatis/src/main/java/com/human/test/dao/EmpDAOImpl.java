package com.human.test.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.test.dto.EmpDTO;

@Repository
//@Repository 로 bean으로 등록
public class EmpDAOImpl implements EmpDAO {

	// 인터페이스 SqlSession sqlSession 에 들어갈 수 있는것들을 찾음->mybatis.xml
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List selectEmp() {

		// emp.xml의 namespace.id 로 가져온다
		// db 접속 준비 (url, id, pw 등을 확보, driver 파악)
		// db 접속
		// sql 실행준비
		// sql 실행
		// 결과를 확보
		// 결과를 가공
		List empList = sqlSession.selectList("id_emp.selectEmp");
		
		System.out.println("empList.size : " + empList.size());
		System.out.println("empList.get(0) : " + empList.get(0));
		
		
		return empList;
	}
	
	@Override
	public List selectEmp20() {
		
		List empList = sqlSession.selectList("id_emp.selectEmp20");
		
		return empList;
	}

	@Override
	public List deptno(int deptno) {

		List empList = sqlSession.selectList("id_emp.deptno", deptno);
		
		return empList;
	}

	@Override
	public EmpDTO ename(EmpDTO dto) {

		//emp.xml
//		EmpDTO empDTO = sqlSession.selectOne("id_emp.ename", dto);
		// selectOne일때는 값 하나일때만 (한줄만 나오는 로직)
		// 두개이상의 값이 나오게 되면 오류 -> 리스트로 받는다
		EmpDTO empDTO = sqlSession.selectOne("id_emp.ename_like", dto);
		
		return empDTO;
	}

	@Override
	public List if_ename_like(EmpDTO dto) {

		List empDTO = sqlSession.selectList("id_emp.if_ename_like", dto);
		
		return empDTO;
	}

	
	/////////////////////////////////////////////
	
	@Override
	public List searchEmp(EmpDTO dto) {
		
		List empList = sqlSession.selectList("id_emp.if_ename_like", dto);
		
		return empList;
	}

	@Override
	public List foreach(List list) {

		List empList = sqlSession.selectList("id_emp.foreach", list);
		
		return empList;
	}

	
	////////////////////////////////////////////////
	
	
	@Override
	public List selectEmp2() {

		List empList = sqlSession.selectList("id_emp.selectEmp2");
		
		return empList;
	}

	/////////////////////////////////////////////////
	
	
	@Override
	public int updateEmp2(Map map) {
		
		int result = sqlSession.update("id_emp.updateEmp2", map);
		System.out.println("result : " + result);
		
		return result;
	}

	@Override
	public int insertDummy(EmpDTO dto) {

		System.out.println(dto);
		int result = sqlSession.insert("id_emp.insertDummy", dto);
		System.out.println("insertDummy result : " + result);

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

	//sqlSession.insert("id_emp.updateEmp2", map);
	//sqlSession.delete("id_emp.updateEmp2", map);
	
	

	

}
