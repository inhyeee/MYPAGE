package com.human.test.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.test.dto.EmpDTO;
import com.human.test.service.EmpService;

@Controller
public class EmpController {
	
	@Autowired
	EmpService empService;
	
	@RequestMapping("/empList")
	@ResponseBody
	public List empList() {
		
		List list = empService.empList();
		
		return list;
	}

	@RequestMapping("emp2")
	public String emp2(Model model) {
		
		List list = empService.empList();
		
		model.addAttribute("list", list);
		
		return "emp/emp_list";
	}
	
	@RequestMapping(value="emp2_update", method=RequestMethod.POST)
		public String emp2_update(
				// model.Attribute로 사용해도 가능
				@RequestParam("empno") int empno,
				@RequestParam("ename") String ename) {
		
		System.out.println("empno : " + empno);
		System.out.println("ename : " + ename);
			
		// dto로 사용해도 가능
		// 받은 내용 출력
		Map map = new HashMap();
		map.put("empno", empno);
		map.put("ename", ename);		
		
		// sql로 보내서
		// update 실행
		int result = empService.setEmp2(map);
		// 결과 출력
		System.out.println("update 결과 : " + result);
		
		// 목록페이지로 이동
		// jsp호출이 아닌 다른 requestMapping을 호출하는 방법
		// sendRidirect 하는 법 : request나 model은 사라짐
		return "redirect:/emp2";
		
		// forward 방법
//		return "forward:/emp2";
		
		// 아니면 그냥 메소드의 전달인자 맞춰서 호출
//		emp2(model);
	
		}
	
	@RequestMapping(value="emp2_delete", method=RequestMethod.POST)
		public String emp2_delete( 
				
				@RequestParam("empno")int empno, 
				Model model) {
		
		
		int result = empService.deleteEmp2(empno);
		
		System.out.println("삭제결과 : " + result);	
		
		model.addAttribute("result", result);
		
		return "redirect:/emp2";
		
		}
	
	// 상세 페이지
	@RequestMapping("emp2_detail")
		public String emp2_detail(@ModelAttribute EmpDTO dto, Model model) {
		
		EmpDTO empDTO = empService.detailEmp2(dto);

		model.addAttribute("empDTO", empDTO);
		
		// jsp로 리턴
		return "emp/emp_detail";
	}
	
	
	@RequestMapping("emp2_modify_list")
		public String emp2_modify_list(@ModelAttribute EmpDTO dto, Model model) {
		
		EmpDTO empDTO = empService.modifyList(dto);
		
		model.addAttribute("empDTO", empDTO);
		
		return "emp/emp_modify";
		
	}
	
	
	@RequestMapping(value="emp2_modify", method=RequestMethod.POST)
		public String emp2_modify(@ModelAttribute EmpDTO dto) {
		
		int result = empService.modifyEmp2(dto);
		System.out.println("modify 결과 : " + result);
		
		
		return "redirect:/emp2_detail?empno=" + dto.getEmpno();
		
	}
	
	@RequestMapping(value="emp2_del", method=RequestMethod.POST)
	public String emp2_del( 
			
			@RequestParam("empno")int empno, 
			Model model) {
	
	
	int result = empService.delEmp2(empno);
	
	System.out.println("del result 결과 : " + result);	
	
	model.addAttribute("result", result);
	
	return "redirect:/emp2";
	
	}
	
	
	@RequestMapping("create")
	public String create() {
		
		return "emp/emp_create";
	}

	
	@RequestMapping(value="emp2_create", method=RequestMethod.POST)
	public String emp2_create(
			@ModelAttribute EmpDTO dto
			) { 
		int result = empService.createEmp2(dto);
		System.out.println("create : " + result);
		
		return "redirect:/emp2";
	}
	
	//////////////////// DB insert -> 실행하면 insertDummy(50) 만큼 반복
	@RequestMapping("/makeDummy")
	@ResponseBody
	public String makeDummy() {
		empService.insertDummy(50);
		
		return "완료";
	}
	
	
	////////////////////////////////// 페이징
	@RequestMapping("/emp2page")
	public String emp2page(Model model, HttpServletRequest request) {
		
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지
		
		// jsp에서 1번페이지 2번페이지를 보겠다
		String tmp_pageNum = request.getParameter("pageNum");
		// 만약 3번이 들어오면, 값이 넘어오면 pagenum = 3, 아무값도 아닐경우 1 유지
		if(tmp_pageNum != null) {
			try {
				// 숫자가 아닐경우 , 1 유지됨
				pageNum = Integer.parseInt(tmp_pageNum);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		String tmp_countPerPage = request.getParameter("countPerPage");
		if(tmp_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(tmp_countPerPage);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		// 넘어온 값이 있으면 int로 변환해서 바꿔주고 값이 없다면 초기값을 유지한다
		// 셋팅된 값으로 startnum과 endnum은 서비스에서 넘겨서

		
//		List list = empService.getEmp2Page(pageNum, countPerPage);
		Map map = empService.getEmp2Page(pageNum, countPerPage);
		
		// map에 넣어서 보냄
		// 현재페이지와 한페이지에 몇개 보여줄지
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);		
		
		model.addAttribute("data", map);
		
		return "emp/emp_pagelist";
		
		
	}
	
	
	
	
	// 심화 1.
	@RequestMapping("emp2_select")
	public String emp2_select_list(Model model) {
		
		List list = empService.selectList();
		
		model.addAttribute("empList", list);
		
		return "emp/emp_list2";
	}
	

	
	
	}
	
	
	
	

