package com.human.tiles;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
	
	@RequestMapping("/main")
	public String main() {
		System.out.println("/main 角青");
		
		return "main";
	}
	
	@RequestMapping("/main2")
	public String main2() {
		System.out.println("/main2 角青");
		
		return "main2";
	}
	
	@RequestMapping("/main_auto")
	public String main_auto() {
		System.out.println("/main_auto 角青");
		
		return "main3.human";
	}
	
	@RequestMapping("/member4")
	public String member4() {
		System.out.println("/member4 角青");
		
		return "member/main4.view";
	}
	
}
