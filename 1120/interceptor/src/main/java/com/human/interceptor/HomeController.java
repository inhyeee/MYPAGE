package com.human.interceptor;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		System.out.println("login ����");
		
		// ���ǿ� �α��� ���� �ֱ�
		// ������ ���� ���� �� ���ο� ������ return����		
		HttpSession session = request.getSession();
		
		// ������ ���� ���� �� null�� return����
//		HttpSession session = request.getSession(false);
		
		session.setAttribute("isLogin", "OK");
		
		return "login";
	}
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("main ����");
		
//		HttpSession session = request.getSession();
//		
//		// set���� �ʰ� getAttribute�ϸ� null
//		String isLogin = (String)session.getAttribute("isLogin");
//		// �α��� ���� ����
//		if(isLogin == null) {
//			
//			// forward���
//			// �ּҴ� ������ /main�� �����ϰ� 
//			// ȭ�鸸 logout.jsp ǥ��			
////			return "login";
//			
//			try {
//				String ctxPath = request.getContextPath();
//				System.out.println("ctxPath : "+ ctxPath);
//				response.sendRedirect(ctxPath + "/login");
//				
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//		}
		
		return "main";


	}
	@RequestMapping("/main2")
	public String main2(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("main2 ����");
		
		// MainInterceptor preHandle �� �̵� -> ������ �����
//		try {
//			request.setCharacterEncoding("utf-8");
//			response.setContentType("text/html; charset=utf-8;");
//		} catch (UnsupportedEncodingException e1) {
//			e1.printStackTrace();
//		}
		
		
//		HttpSession session = request.getSession();
//		
//		String isLogin = (String)session.getAttribute("isLogin");
//		
//		if(isLogin == null) {
//			try {
//				String ctxPath = request.getContextPath();
//				System.out.println("ctxPath : "+ ctxPath);
//				response.sendRedirect(ctxPath + "/login");
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}		
		
		return "main2";
		
	}
	@RequestMapping("/logout")
	public String loginout(HttpServletRequest request) {
		System.out.println("logout ����");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		// Ű ������ ã�Ƽ� ���� �� �ִ�
//		session.removeAttribute("isLogin");
		
		
		return "logout";
	}
	
}
