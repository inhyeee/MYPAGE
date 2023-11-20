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
//@Controller ����Ǿ��ֱ� ������ @RequestMapping ��밡��
public class EmpController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);

	@Autowired
	EmpService empService;
	
	// @RequestMapping ���� �Ʒ� �޼ҵ� ����
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
			// ���࿡ deptno �Ķ���Ͱ� ������ null ����
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
	//@ModelAttribute��������
	//Model ���� ������, model�� ��Ƽ�
	public String search(Model model, @ModelAttribute EmpDTO dto) {
		
		// �Ѱܹ��� dto�� 
		System.out.println("enme : " + dto.getEname());
		System.out.println("deptno : " + dto.getDeptno());
		System.out.println("sal : " + dto.getSal());
		
		// sql�� ������
		List list = empService.searchEmp(dto);
		// ����� jsp�� ������
		model.addAttribute("list", list);
		
		//�ӽ÷� Ȯ�θ�
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
	
		// db���� emp2 ��� ��ü ��ȸ
		List list = empService.getEmp2();
		
		// model�� ��Ƽ�(jsp�� ������ model �ַ� ����Ѵ�, requestó��)
		model.addAttribute("list", list);
		
		// jsp�� �̵�(forward ���)
		return "emp/emp_list";
		
	}

	@RequestMapping(value="/emp2_update", method=RequestMethod.POST)
	public String emp2_update(
			@RequestParam("empno") int empno,
			@RequestParam("ename") String ename
	) {
		// @RequestParam ��ſ� Model ����ص� �ȴ�
		
		// �ϴ��� ���� ���� ���
		System.out.println("empno : " + empno);
		System.out.println("ename : " + ename);
		
		// DTO��� Map ����غ�
		Map map = new HashMap();
		map.put("empno", empno);
		map.put("ename", ename);
		
		// sql�� ������
		// updaet ����
		int result = empService.setEmp2(map);
		// ��� ���
		System.out.println("update ��� : " + result);
		
		// ����������� �̵�
		// �ٸ� RequestMapping�� ȣ���ϴ� ���
		// sendRedirect �ϴ� ��(request �� model�� �����)
		return "redirect:/emp2";
		
		//forward ���
		// return "forward:/emp2";
		
		// �ƴϸ� �׳� �޼ҵ��� �������� ���缭 ȣ��
			
	}
	
	@RequestMapping("/makeDummy")
	@ResponseBody
	public String makeDummy() {
		
		empService.insertDummy(50);
		
		return "�Ϸ�";
	}
	
	@RequestMapping("/emp2page")
	public String emp2page(Model model, HttpServletRequest request) {
		
		int pageNum = 1; // ����������
		int countPerPage = 10; // �� �������� � ��������
		
		String tmp_pageNum = request.getParameter("pageNum");
		if(tmp_pageNum != null) {
			// �Ѿ�� Ű ���� ������ null�� ���´�
			try {
				// null �� �ƴϸ� pagenum�� int�� ��ȯ�� �ִ´�
				pageNum = Integer.parseInt(tmp_pageNum);
				
			}catch(Exception e) {
				e.printStackTrace();
			}

		}
		
		
		String tmp_countPerPage = request.getParameter("countPerPage");
		if(tmp_countPerPage != null) {
			// �Ѿ�� Ű ���� ������ null�� ���´�
			try {
				// null �� �ƴϸ� countPerPage�� int�� ��ȯ�� �ִ´�
				countPerPage = Integer.parseInt(tmp_countPerPage);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
	
		// db���� emp2 ��� ��ü ��ȸ
		Map map = empService.getEmp2Page(pageNum, countPerPage);
		
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);
		
		
		// model�� ��Ƽ�(jsp�� ������ model �ַ� ����Ѵ�, requestó��)
		// data map �ȿ��� list�� total�� ����ִ�
		model.addAttribute("data", map);
		
		// jsp�� �̵�(forward ���)
		return "emp/emp_pagelist";
		
	}

}
