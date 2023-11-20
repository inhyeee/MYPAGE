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
		System.out.println("preHandle ����");
		// ��Ʈ�ѷ��� ���� �� ������ �����
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8;");
		
		  String uri = request.getRequestURI();
		  String url = request.getRequestURL().toString();
		  String ctxPath = request.getContextPath();
		  String servletPath = request.getServletPath();
		 
		  System.out.println("uri : " + uri);
		  // /aop/main �������� �����Ű�� �ּ�
		  System.out.println("url : " + url);
		  // ����ּ�
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
		  
		  // ���� �ð� - ���� �ð�
		  long now = System.currentTimeMillis();
		  // request�� �־��
		  request.setAttribute("before", now);
		  
		  
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle ����");
		
		// ���� �ð� -  ������ �ð�
		long now = System.currentTimeMillis();
		// preHandle���� request�� �־�� before �ð�
		long before = (Long)request.getAttribute("before");
		
		System.out.println("�ɸ� �ð� : " + (now - before));
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("afterCompletion ����");
		
	}

}
