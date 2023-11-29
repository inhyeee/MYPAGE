package com.human.unicorn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// �α��� ������ ����
	@RequestMapping("/login")
	public String login() {
		System.out.println("/login ����");
		return "login";
	}
	

	// DB���� �Է��Ѱ��� ���ؼ�
	// �����ϸ� ����, �����ϸ� �α��������� �̵�
	@RequestMapping("/login_Users")
	public String loginUsers(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {

		// �Է��ʵ尡 ���� �ƴϸ�
		if (dto.getId() != null && !dto.getId().equals("") && dto.getPw() != null && !dto.getPw().equals("")) {

//			List<MemberDTO> list = memberService.getselectusers(dto);
			System.out.println("id : " + dto.getId());
			System.out.println("pw : " + dto.getPw());

			MemberDTO user_list = memberService.loginUsers(dto);

			// ���ǿ� ���
			HttpSession session = request.getSession();
			session.setAttribute("userList", user_list);
			System.out.println("session:" + session);

			String id = (String) request.getAttribute("id");

			// ��ġ����������
			if (user_list == null) {
				model.addAttribute("error", "���̵� �Ǵ� ��й�ȣ�� ��ġ�����ʽ��ϴ�");
				return "login";

			} else {
				return "main";
			}

		} else {
			model.addAttribute("error", "���̵� �Ǵ� ��й�ȣ�� �Է����ּ���");
			return "login";
		}
	}
	

	// ȸ������ ������ ����
	@RequestMapping("/signup")
	public String signup() {
		System.out.println("/signup ����");
		return "signup";
	}
	

	// DB���� �Է��Ѱ��� ��
	@RequestMapping("/signup_Users")
	public String signupUsers(Model model, @ModelAttribute MemberDTO dto) {

		// ��� �Է��ʵ尡 ������� �������
		if (dto.getName() != null && !dto.getName().isEmpty() && dto.getId() != null && !dto.getId().isEmpty()
				&& dto.getPw() != null && !dto.getPw().isEmpty() && dto.getEmail() != null && !dto.getEmail().isEmpty()
				&& dto.getTel() != null && !dto.getTel().isEmpty() && dto.getAddress() != null
				&& !dto.getAddress().isEmpty()) {

			MemberDTO signup_list = memberService.loginUsers(dto);

			System.out.println("signup_list.size : " + signup_list);

			// �ߺ��˻�
			if (signup_list != null) {
				model.addAttribute("error", "�̹� �����ϴ� ȸ���Դϴ�");
				return "signup";
			}

			// �ߺ����������� ���� ����
			int result = memberService.signup(dto);
			System.out.println("ȸ������ �Ϸ�");
			return "login";

			// ����ִ� ���
		} else {
			model.addAttribute("error", "��� ������ �Է����ּ���");
			System.out.println("ȸ������ ����");

			// ȸ������ �������� �̵�
			return "signup";

		}

	}
	

	// ���̵�,��й�ȣ ã�� ������ ����
	@RequestMapping("/idpw")
	public String idpw() {
		System.out.println("/idpw ����");

		return "idpw";
	}

	
	// ���̵� ã��
	@RequestMapping("/find_id")
	public String find_id(Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_id ����");

		if (dto.getName() != null && !dto.getName().equals("") && dto.getEmail() != null
				&& !dto.getEmail().equals("")) {

			System.out.println("Name : " + dto.getName());
			System.out.println("Email : " + dto.getEmail());

			MemberDTO id = memberService.findid(dto);

			if (id != null) {
				model.addAttribute("message", id.getName() + "���� ���̵�� [ " + id.getId() + " ] �Դϴ�");
				return "idpw";

			} else {
				model.addAttribute("error", "��ġ�ϴ� ������ �����ϴ�");
				return "idpw";
			}
			
		} else {
			model.addAttribute("error", "������ �Է����ּ���");
			return "idpw";

		}
	}
	

	// ��й�ȣ ã��
	@RequestMapping("/find_pw")
	public String find_pw(Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_pw ����");

		if (dto.getName() != null && !dto.getName().equals("") && dto.getId() != null && !dto.getId().equals("") && dto.getEmail() != null && !dto.getEmail().equals("")) {

			System.out.println("Name : " + dto.getName());
			System.out.println("Id : " + dto.getId());
			System.out.println("Email : " + dto.getEmail());

			MemberDTO pw = memberService.findpw(dto);

			if (pw != null) {
				model.addAttribute("pwmessage", pw.getName() + "���� ��й�ȣ�� [ " + pw.getPw() + " ] �Դϴ�");
				return "idpw";

			} else {
				model.addAttribute("error", "��ġ�ϴ� ������ �����ϴ�");
				return "idpw";
			}
			
		} else {
			model.addAttribute("error", "������ �Է����ּ���");
			return "idpw";

		}
	}

	
	// ��й�ȣ �缳�� ������ ����
	@RequestMapping("/reset")
	public String reset() {
		System.out.println("/reset ����");

		return "reset";
	}

	
	// ��й�ȣ �缳��
//	@RequestMapping("/pw_reset")
//	public String pw_reset(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {
//		System.out.println("/pw_reset ����");
//
//		String password = dto.getPw();
//		String id = (String) request.getSession().getAttribute("id");
//		
//		// ���ǿ� ����� ���̵� ������ �α��� �������� �����̷�Ʈ
//		if(id == null) {
//			System.out.println("����");
//			return "redirect:/login";
//		}
//
//		// ��й�ȣ�� ��й�ȣ Ȯ���� ��� �Էµ� ���
//		if (password != null && !password.equals("") && passwordConfirm != null && !passwordConfirm.equals("")) {
//
//			// ��й�ȣ�� ��й�ȣ Ȯ���� ��ġ�ϴ� ���
//			if (password.equals(passwordConfirm)) {
//				System.out.println("Password : " + password);
//
//				// DB���� ��й�ȣ ������Ʈ
//				Map<String, String> map = new HashMap<String, String>();
//				map.put("id", id); // ����� ���̵� ������� ������Ʈ
//				map.put("pw", password);
//
//				int update = memberService.setupdate(map);
//
//				System.out.println("update ��� : " + update);
//
//				// ��й�ȣ ������Ʈ ����
//				if (update > 0) {
//					System.out.println(1);
//					model.addAttribute("pwmessage", "��й�ȣ �缳���� �Ϸ��߽��ϴ�");
//
//				} else {
//					System.out.println(2);
//					model.addAttribute("pwmessage", "��й�ȣ ������Ʈ�� �����߽��ϴ�");
//					return "reset";
//				}
//
//				// ��й�ȣ�� ��й�ȣ Ȯ���� ��ġ���� �ʴ� ���
//			} else {
//				System.out.println(3);
//				model.addAttribute("error", "��й�ȣ�� Ȯ�����ּ���");
//				return "reset";
//			}
//
//			// �Էµ��� ���� ������ �ִ� ���
//		} else {
//			System.out.println(4);
//			model.addAttribute("error", "������ �Է����ּ���");
//			return "reset";
//		}
//		return "reset";
//	}
	

	// ������� ������ ����
	@RequestMapping("/checked")
	public String checked() {
		System.out.println("/checked ����");

		return "checked";
	}
	

	// �α׾ƿ� ������ ����
	@RequestMapping("/logout")
	public String logout() {
		System.out.println("/logout ����");

		return "logout";
	}
	


}