package com.human.interceptor.aop;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class MainInterceptor  implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandle 실행");
		// 컨트롤러로 가기 전 무조건 실행됨
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8;");
		
		  String uri = request.getRequestURI();
		  String url = request.getRequestURL().toString();
		  String ctxPath = request.getContextPath();
		  String servletPath = request.getServletPath();
		 
		  System.out.println("uri : " + uri);
		  // /aop/main 직접적인 실행시키는 주소
		  System.out.println("url : " + url);
		  // 모든주소
		  System.out.println("ctxPath : " + ctxPath);
		  // /aop
		  System.out.println("servletPath : " + servletPath);
		  // /main
		  
		  if(
				   !"/login".equals(servletPath)
				&& !"/logout".equals(servletPath)
				  ) {
			  HttpSession session = request.getSession();
			  
			  String isLogin = (String) session.getAttribute("isLogin");
			  if(isLogin == null) {
					try {
						response.sendRedirect(ctxPath + "/login");
					} catch (IOException e) {
						e.printStackTrace();
					}
					return false;
				}
		  }
		  
		  // 지금 시간 - 시작 시간
		  long now = System.currentTimeMillis();
		  // request에 넣어놈
		  request.setAttribute("before", now);
		  
		  
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle 실행");
		
		// 지금 시간 -  끝나는 시간
		long now = System.currentTimeMillis();
		// preHandle에서 request에 넣어둔 before 시간
		long before = (Long)request.getAttribute("before");
		
		System.out.println("걸린 시간 : " + (now - before));
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("afterCompletion 실행");
		
	}

}
