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
				// model.Attribute�� ����ص� ����
				@RequestParam("empno") int empno,
				@RequestParam("ename") String ename) {
		
		System.out.println("empno : " + empno);
		System.out.println("ename : " + ename);
			
		// dto�� ����ص� ����
		// ���� ���� ���
		Map map = new HashMap();
		map.put("empno", empno);
		map.put("ename", ename);		
		
		// sql�� ������
		// update ����
		int result = empService.setEmp2(map);
		// ��� ���
		System.out.println("update ��� : " + result);
		
		// ����������� �̵�
		// jspȣ���� �ƴ� �ٸ� requestMapping�� ȣ���ϴ� ���
		// sendRidirect �ϴ� �� : request�� model�� �����
		return "redirect:/emp2";
		
		// forward ���
//		return "forward:/emp2";
		
		// �ƴϸ� �׳� �޼ҵ��� �������� ���缭 ȣ��
//		emp2(model);
	
		}
	
	@RequestMapping(value="emp2_delete", method=RequestMethod.POST)
		public String emp2_delete( 
				
				@RequestParam("empno")int empno, 
				Model model) {
		
		
		int result = empService.deleteEmp2(empno);
		
		System.out.println("������� : " + result);	
		
		model.addAttribute("result", result);
		
		return "redirect:/emp2";
		
		}
	
	// �� ������
	@RequestMapping("emp2_detail")
		public String emp2_detail(@ModelAttribute EmpDTO dto, Model model) {
		
		EmpDTO empDTO = empService.detailEmp2(dto);

		model.addAttribute("empDTO", empDTO);
		
		// jsp�� ����
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
		System.out.println("modify ��� : " + result);
		
		
		return "redirect:/emp2_detail?empno=" + dto.getEmpno();
		
	}
	
	@RequestMapping(value="emp2_del", method=RequestMethod.POST)
	public String emp2_del( 
			
			@RequestParam("empno")int empno, 
			Model model) {
	
	
	int result = empService.delEmp2(empno);
	
	System.out.println("del result ��� : " + result);	
	
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
	
	//////////////////// DB insert -> �����ϸ� insertDummy(50) ��ŭ �ݺ�
	@RequestMapping("/makeDummy")
	@ResponseBody
	public String makeDummy() {
		empService.insertDummy(50);
		
		return "�Ϸ�";
	}
	
	
	////////////////////////////////// ����¡
	@RequestMapping("/emp2page")
	public String emp2page(Model model, HttpServletRequest request) {
		
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������
		
		// jsp���� 1�������� 2���������� ���ڴ�
		String tmp_pageNum = request.getParameter("pageNum");
		// ���� 3���� ������, ���� �Ѿ���� pagenum = 3, �ƹ����� �ƴҰ�� 1 ����
		if(tmp_pageNum != null) {
			try {
				// ���ڰ� �ƴҰ�� , 1 ������
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
		// �Ѿ�� ���� ������ int�� ��ȯ�ؼ� �ٲ��ְ� ���� ���ٸ� �ʱⰪ�� �����Ѵ�
		// ���õ� ������ startnum�� endnum�� ���񽺿��� �Ѱܼ�

		
//		List list = empService.getEmp2Page(pageNum, countPerPage);
		Map map = empService.getEmp2Page(pageNum, countPerPage);
		
		// map�� �־ ����
		// ������������ ���������� � ��������
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);		
		
		model.addAttribute("data", map);
		
		return "emp/emp_pagelist";
		
		
	}
	
	
	
	
	// ��ȭ 1.
	@RequestMapping("emp2_select")
	public String emp2_select_list(Model model) {
		
		List list = empService.selectList();
		
		model.addAttribute("empList", list);
		
		return "emp/emp_list2";
	}
	

	
	
	}
	
	
	
	

