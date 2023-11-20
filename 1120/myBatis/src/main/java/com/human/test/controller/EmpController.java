package com.human.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.test.HomeController;
import com.human.test.dto.EmpDTO;
import com.human.test.service.EmpService;

@Controller
//@Controller 선언되어있기 때문에 @RequestMapping 사용가능
public class EmpController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);

	@Autowired
	EmpService empService;
	
	// @RequestMapping 으로 아래 메소드 실행
	@RequestMapping("/empList")
	@ResponseBody
	public List empList() {
		
		List list = empService.empList();
		
		return list;
	}
	
	@RequestMapping("/empList20")
	@ResponseBody
	public List empList20() {
		System.out.println("/empList20");
		
		List list = empService.empList20();
		System.out.println("list.size : " + list.size());
		
		return list;
	}
	
	@RequestMapping("/deptno")
	@ResponseBody
	public List deptno(HttpServletRequest request) {
		System.out.println("/deptno");
		
		String str_deptno = request.getParameter("deptno");
		if(str_deptno == null) {
			// 만약에 deptno 파라미터가 없으면 null 리턴
			return null;
		}
		
		int deptno = Integer.parseInt(str_deptno);
		List list = empService.deptno(deptno);
		
		System.out.println("list.size : " + list.size());
		
		return list;
	}
	
	@RequestMapping("/ename")
	@ResponseBody
	public EmpDTO ename(@ModelAttribute EmpDTO dto) {
		
		EmpDTO empDTO = empService.ename(dto);
		
		return empDTO;
	}
	
	///////////////////////////////////////////////////
	
	@RequestMapping("/emp_search")
	public String emp_search() {
		
		return "emp/emp_search";
		
//		return "redirect : /ename";
	}
	
	
	@RequestMapping("/search")
	//@ModelAttribute생략가능
	//Model 값을 던질때, model에 담아서
	public String search(Model model, @ModelAttribute EmpDTO dto) {
		
		// 넘겨받은 dto를 
		System.out.println("enme : " + dto.getEname());
		System.out.println("deptno : " + dto.getDeptno());
		System.out.println("sal : " + dto.getSal());
		
		// sql로 보내서
		List list = empService.searchEmp(dto);
		// 결과를 jsp로 보낸다
		model.addAttribute("list", list);
		
		//임시로 확인만
//		model.addAttribute("dto", dto);
		
		return "emp/emp_result";
	}
	
	
	@RequestMapping("/foreach")
	public String foreach(Model model) {
		
		List<String> list = new ArrayList<String>();
		list.add("SCOTT");
		list.add("KING");
		
		List resultList = empService.foreach(list);
		model.addAttribute("list", resultList);
	
		
		return "emp/emp_result";
	}
	
	///////////////////////////////////////////////////////
	
	@RequestMapping("/emp2")
	public String emp2(Model model) {
	
		// db에서 emp2 목록 전체 조회
		List list = empService.getEmp2();
		
		// model에 담아서(jsp로 보낼때 model 주로 사용한다, request처럼)
		model.addAttribute("list", list);
		
		// jsp로 이동(forward 방식)
		return "emp/emp_list";
		
	}

	@RequestMapping(value="/emp2_update", method=RequestMethod.POST)
	public String emp2_update(
			@RequestParam("empno") int empno,
			@RequestParam("ename") String ename
	) {
		// @RequestParam 대신에 Model 사용해도 된다
		
		// 일단은 받은 내용 출력
		System.out.println("empno : " + empno);
		System.out.println("ename : " + ename);
		
		// DTO대신 Map 사용해봄
		Map map = new HashMap();
		map.put("empno", empno);
		map.put("ename", ename);
		
		// sql로 보내서
		// updaet 실행
		int result = empService.setEmp2(map);
		// 결과 출력
		System.out.println("update 결과 : " + result);
		
		// 목록페이지로 이동
		// 다른 RequestMapping을 호출하는 방법
		// sendRedirect 하는 법(request 나 model은 사라짐)
		return "redirect:/emp2";
		
		//forward 방법
		// return "forward:/emp2";
		
		// 아니면 그냥 메소드의 전달인자 맞춰서 호출
			
	}
	
	@RequestMapping("/makeDummy")
	@ResponseBody
	public String makeDummy() {
		
		empService.insertDummy(50);
		
		return "완료";
	}
	
	@RequestMapping("/emp2page")
	public String emp2page(Model model, HttpServletRequest request) {
		
		int pageNum = 1; // 현재페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지
		
		String tmp_pageNum = request.getParameter("pageNum");
		if(tmp_pageNum != null) {
			// 넘어온 키 값이 없으면 null이 들어온다
			try {
				// null 이 아니면 pagenum에 int로 변환해 넣는다
				pageNum = Integer.parseInt(tmp_pageNum);
				
			}catch(Exception e) {
				e.printStackTrace();
			}

		}
		
		
		String tmp_countPerPage = request.getParameter("countPerPage");
		if(tmp_countPerPage != null) {
			// 넘어온 키 값이 없으면 null이 들어온다
			try {
				// null 이 아니면 countPerPage에 int로 변환해 넣는다
				countPerPage = Integer.parseInt(tmp_countPerPage);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
	
		// db에서 emp2 목록 전체 조회
		Map map = empService.getEmp2Page(pageNum, countPerPage);
		
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);
		
		
		// model에 담아서(jsp로 보낼때 model 주로 사용한다, request처럼)
		// data map 안에는 list와 total이 들어있다
		model.addAttribute("data", map);
		
		// jsp로 이동(forward 방식)
		return "emp/emp_pagelist";
		
	}

}
