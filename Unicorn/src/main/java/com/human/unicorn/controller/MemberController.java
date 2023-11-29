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

	// 로그인 페이지 열기
	@RequestMapping("/login")
	public String login() {
		System.out.println("/login 실행");
		return "login";
	}
	

	// DB에서 입력한값과 비교해서
	// 성공하면 메인, 실패하면 로그인페이지 이동
	@RequestMapping("/login_Users")
	public String loginUsers(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {

		// 입력필드가 빈값이 아니면
		if (dto.getId() != null && !dto.getId().equals("") && dto.getPw() != null && !dto.getPw().equals("")) {

//			List<MemberDTO> list = memberService.getselectusers(dto);
			System.out.println("id : " + dto.getId());
			System.out.println("pw : " + dto.getPw());

			MemberDTO user_list = memberService.loginUsers(dto);

			// 세션에 담기
			HttpSession session = request.getSession();
			session.setAttribute("userList", user_list);
			System.out.println("session:" + session);

			String id = (String) request.getAttribute("id");

			// 일치하지않으면
			if (user_list == null) {
				model.addAttribute("error", "아이디 또는 비밀번호가 일치하지않습니다");
				return "login";

			} else {
				return "main";
			}

		} else {
			model.addAttribute("error", "아이디 또는 비밀번호를 입력해주세요");
			return "login";
		}
	}
	

	// 회원가입 페이지 열기
	@RequestMapping("/signup")
	public String signup() {
		System.out.println("/signup 실행");
		return "signup";
	}
	

	// DB에서 입력한값과 비교
	@RequestMapping("/signup_Users")
	public String signupUsers(Model model, @ModelAttribute MemberDTO dto) {

		// 모든 입력필드가 비어있지 않은경우
		if (dto.getName() != null && !dto.getName().isEmpty() && dto.getId() != null && !dto.getId().isEmpty()
				&& dto.getPw() != null && !dto.getPw().isEmpty() && dto.getEmail() != null && !dto.getEmail().isEmpty()
				&& dto.getTel() != null && !dto.getTel().isEmpty() && dto.getAddress() != null
				&& !dto.getAddress().isEmpty()) {

			MemberDTO signup_list = memberService.loginUsers(dto);

			System.out.println("signup_list.size : " + signup_list);

			// 중복검사
			if (signup_list != null) {
				model.addAttribute("error", "이미 존재하는 회원입니다");
				return "signup";
			}

			// 중복되지않으면 가입 진행
			int result = memberService.signup(dto);
			System.out.println("회원가입 완료");
			return "login";

			// 비어있는 경우
		} else {
			model.addAttribute("error", "모든 정보를 입력해주세요");
			System.out.println("회원가입 실패");

			// 회원가입 페이지로 이동
			return "signup";

		}

	}
	

	// 아이디,비밀번호 찾기 페이지 열기
	@RequestMapping("/idpw")
	public String idpw() {
		System.out.println("/idpw 실행");

		return "idpw";
	}

	
	// 아이디 찾기
	@RequestMapping("/find_id")
	public String find_id(Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_id 실행");

		if (dto.getName() != null && !dto.getName().equals("") && dto.getEmail() != null
				&& !dto.getEmail().equals("")) {

			System.out.println("Name : " + dto.getName());
			System.out.println("Email : " + dto.getEmail());

			MemberDTO id = memberService.findid(dto);

			if (id != null) {
				model.addAttribute("message", id.getName() + "님의 아이디는 [ " + id.getId() + " ] 입니다");
				return "idpw";

			} else {
				model.addAttribute("error", "일치하는 정보가 없습니다");
				return "idpw";
			}
			
		} else {
			model.addAttribute("error", "정보를 입력해주세요");
			return "idpw";

		}
	}
	

	// 비밀번호 찾기
	@RequestMapping("/find_pw")
	public String find_pw(Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_pw 실행");

		if (dto.getName() != null && !dto.getName().equals("") && dto.getId() != null && !dto.getId().equals("") && dto.getEmail() != null && !dto.getEmail().equals("")) {

			System.out.println("Name : " + dto.getName());
			System.out.println("Id : " + dto.getId());
			System.out.println("Email : " + dto.getEmail());

			MemberDTO pw = memberService.findpw(dto);

			if (pw != null) {
				model.addAttribute("pwmessage", pw.getName() + "님의 비밀번호는 [ " + pw.getPw() + " ] 입니다");
				return "idpw";

			} else {
				model.addAttribute("error", "일치하는 정보가 없습니다");
				return "idpw";
			}
			
		} else {
			model.addAttribute("error", "정보를 입력해주세요");
			return "idpw";

		}
	}

	
	// 비밀번호 재설정 페이지 열기
	@RequestMapping("/reset")
	public String reset() {
		System.out.println("/reset 실행");

		return "reset";
	}

	
	// 비밀번호 재설정
//	@RequestMapping("/pw_reset")
//	public String pw_reset(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {
//		System.out.println("/pw_reset 실행");
//
//		String password = dto.getPw();
//		String id = (String) request.getSession().getAttribute("id");
//		
//		// 세션에 사용자 아이디가 없으면 로그인 페이지로 리다이렉트
//		if(id == null) {
//			System.out.println("실패");
//			return "redirect:/login";
//		}
//
//		// 비밀번호와 비밀번호 확인이 모두 입력된 경우
//		if (password != null && !password.equals("") && passwordConfirm != null && !passwordConfirm.equals("")) {
//
//			// 비밀번호와 비밀번호 확인이 일치하는 경우
//			if (password.equals(passwordConfirm)) {
//				System.out.println("Password : " + password);
//
//				// DB에서 비밀번호 업데이트
//				Map<String, String> map = new HashMap<String, String>();
//				map.put("id", id); // 사용자 아이디를 기반으로 업데이트
//				map.put("pw", password);
//
//				int update = memberService.setupdate(map);
//
//				System.out.println("update 결과 : " + update);
//
//				// 비밀번호 업데이트 성공
//				if (update > 0) {
//					System.out.println(1);
//					model.addAttribute("pwmessage", "비밀번호 재설정을 완료했습니다");
//
//				} else {
//					System.out.println(2);
//					model.addAttribute("pwmessage", "비밀번호 업데이트에 실패했습니다");
//					return "reset";
//				}
//
//				// 비밀번호와 비밀번호 확인이 일치하지 않는 경우
//			} else {
//				System.out.println(3);
//				model.addAttribute("error", "비밀번호를 확인해주세요");
//				return "reset";
//			}
//
//			// 입력되지 않은 정보가 있는 경우
//		} else {
//			System.out.println(4);
//			model.addAttribute("error", "정보를 입력해주세요");
//			return "reset";
//		}
//		return "reset";
//	}
	

	// 약관동의 페이지 열기
	@RequestMapping("/checked")
	public String checked() {
		System.out.println("/checked 실행");

		return "checked";
	}
	

	// 로그아웃 페이지 열기
	@RequestMapping("/logout")
	public String logout() {
		System.out.println("/logout 실행");

		return "logout";
	}
	


}