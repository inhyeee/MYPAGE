package com.human.unicorn.controller;

import java.sql.Date;
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

import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.service.ProductService;
import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.service.ManagerPageService;
import com.human.unicorn.dto.MemberDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagerPageController {

	private static final Logger logger = LoggerFactory.getLogger(ManagerPageController.class);

	@Autowired
	ProductService productService;
	@Autowired
	ManagerPageService managerPageService;

	@RequestMapping("/managerMain")
	public String managerMain() {
		System.out.println("관리자 메인");
		return "managerMain";
	}

	@RequestMapping("/managerProduct")
	public String managerProduct(Model model, @ModelAttribute ProductDTO dto, HttpServletRequest request) {

		List<ProductDTO> productList = productService.productList();
		model.addAttribute("productList", productList);

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String tmp_pageNum = request.getParameter("pageNum");
		if (tmp_pageNum != null) {
			try {
				pageNum = Integer.parseInt(tmp_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String tmp_countPerPage = request.getParameter("countPerPage");
		if (tmp_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(tmp_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 prodcut 목록 전체 조회
		Map map = managerPageService.getManagerProductList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);
		return "managerProduct";
	}

	@RequestMapping("/managerProductUpdate")
	public String managerProductUpdate(@RequestParam("productNo") int productNo, Model model) {
		System.out.println(productNo);
		// 특정 productNo에 해당하는 제품 조회
		ProductDTO product = managerPageService.getProductByProductNo(productNo);
		System.out.println(product);
		// 조회된 제품 데이터를 모델에 추가
		model.addAttribute("product", product);

		return "managerProductUpdate";
	}

	@RequestMapping("/managerProductDoUpdate")
	public String managerProductDoUpdate(@ModelAttribute ProductDTO updatedProduct, Model model) {
		System.out.println("업데이트 시작");
		// ManagerPageService를 통해 업데이트 메서드 호출
		managerPageService.updateProduct(updatedProduct);

		// 특정 productNo에 해당하는 제품 조회
		ProductDTO product = managerPageService.getProductByProductNo(updatedProduct.getProductNo());

		// 조회된 제품 데이터를 모델에 추가
		model.addAttribute("product", product);

		return "redirect:/managerProduct";
	}

	@RequestMapping("/managerProductDelete")
	public String managerProductDelete(
			@RequestParam(value = "productNo", required = false) List<Integer> productNoList) {
		if (productNoList != null && !productNoList.isEmpty()) {
			managerPageService.deleteProducts(productNoList);
		}
		return "redirect:/managerProduct";
	}

	@RequestMapping("/managerProductInsert")
	public String managerProductInsert() {

		return "managerProductInsert";
	}

	@RequestMapping("/managerProductDoInsert")
	public String managerProductDoInsert(HttpServletRequest request, @ModelAttribute ProductDTO product) {
		// 사용자 입력 값을 받아옴
		String productName = request.getParameter("productName");
		String productEx = request.getParameter("productEx");
		String mainImg1 = request.getParameter("mainImg1");
		String mainImg2 = request.getParameter("mainImg2");
		String mainImg3 = request.getParameter("mainImg3");
		String fabric = request.getParameter("fabric");
		String company = request.getParameter("company");
		int popularity = Integer.parseInt(request.getParameter("popularity"));
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));

		// ProductDTO 객체에 설정

		product.setProductName(productName);
		product.setProductEx(productEx);
		product.setMainImg1(mainImg1);
		product.setMainImg2(mainImg2);
		product.setMainImg3(mainImg3);
		product.setFabric(fabric);
		product.setCompany(company);
		product.setPopularity(popularity);
		product.setProductPrice(productPrice);

		// ManagerPageService를 통해 insertProduct 메서드 호출
		managerPageService.insertProduct(product);

		// 리다이렉트
		return "redirect:/managerProduct";
	}

	// 관리자 공지사항
	@RequestMapping("managerNotice")
	public String managerNotis(Model model, @ModelAttribute NoticeDTO noticedto, HttpServletRequest request) {

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String notice_pageNum = request.getParameter("pageNum");
		if (notice_pageNum != null) {
			try {
				pageNum = Integer.parseInt(notice_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String notice_countPerPage = request.getParameter("countPerPage");
		if (notice_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(notice_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 notice 목록 전체 조회
		Map map = managerPageService.getManagerNoticeList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);

		return "managerNotice";
	}

	@RequestMapping("managerNoticeUpdate")
	public String managerNoticeUpdate(@RequestParam("noticeNo") String noticeNo, Model model) {
		NoticeDTO notice = managerPageService.getNoticeByNoticeNo(noticeNo);
		System.out.println(notice);
		model.addAttribute("notice", notice);
		return "managerNoticeUpdate";
	}

	@RequestMapping("managerNotieDoUpdate")
	public String managerNoticeDoUpdate(@ModelAttribute NoticeDTO updatedNotice, Model model) {
		System.out.println("업데이트 시작");
		// ManagerPageService를 통해 업데이트 메서드 호출
		managerPageService.updateNotice(updatedNotice);

		// 특정 productNo에 해당하는 제품 조회
		NoticeDTO notice = managerPageService.getNoticeByNoticeNo(updatedNotice.getNoticeNo());

		// 조회된 제품 데이터를 모델에 추가
		model.addAttribute("notice", notice);
		return "redirect:/managerNotice";
	}

	// 공지사항 추가하기
	@RequestMapping("/managerNoticeInsert")
	public String managerNoticeInsert() {

		return "managerNoticeInsert";
	}

	@RequestMapping("/managernoticeDoInsert")
	public String managernoticeDoInsert(@ModelAttribute NoticeDTO notice) {
		System.out.println(notice.getNoticeTitle());
		System.out.println(notice.getNoticeDetails());

		// 현재 날짜를 가져오기
		long currentTime = System.currentTimeMillis();
		Date noticeDate = new Date(currentTime);

		// notice 객체에 현재 날짜 설정
		notice.setNoticeDate(noticeDate);

		// 시퀀스를 활용한 고유한 noticeNo 생성
		int noticeNo = managerPageService.getNextNoticeSeq();
		notice.setNoticeNo("n" + noticeNo);

		// ManagerPageService를 통해 insertNotice 메서드 호출
		managerPageService.insertNotice(notice);

		// 리다이렉트
		return "redirect:/managerNotice";
	}

	@RequestMapping("/managerNoticeDelete")
	public String managerNoticeDelete(@RequestParam(value = "noticeNo", required = false) List<String> noticeNoList) {
		if (noticeNoList != null && !noticeNoList.isEmpty()) {
			managerPageService.deleteNotices(noticeNoList);
		}
		return "redirect:/managerNotice";
	}

	// 관리자 회원 관리
	@RequestMapping("/managerMember")
	public String managerMember(Model model, @ModelAttribute MemberDTO memberdto, HttpServletRequest request) {

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String member_pageNum = request.getParameter("pageNum");
		if (member_pageNum != null) {
			try {
				pageNum = Integer.parseInt(member_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String member_countPerPage = request.getParameter("countPerPage");
		if (member_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(member_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 prodcut 목록 전체 조회
		Map map = managerPageService.getManagerMemberList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);

		return "managerMember";
	}

	@RequestMapping(value = "managerMemberDelete", method = RequestMethod.POST)
	public String managerMemberDelete(
			@RequestParam(value = "selectedUsers", required = false) List<Integer> selectedUsers) {
		if (selectedUsers != null && !selectedUsers.isEmpty()) {
			managerPageService.deleteMembers(selectedUsers);
		}
		return "redirect:/managerMember";
	}

	@RequestMapping("/managerMemberDetails")
	public String managerDetails(@RequestParam("memberNo") int memberNo, Model model) {
		// 클릭한 회원의 정보를 조회
		MemberDTO member = managerPageService.getMemberByMemberNo(memberNo);

		// 조회된 회원 정보를 모델에 추가
		model.addAttribute("member", member);

		// managerMemberDetails.jsp로 이동
		return "managerMemberDetails";

	}

	// 관리자 이벤트
	@RequestMapping("/managerEvent")
	public String managerEvent(Model model, @ModelAttribute EventDTO eventdto, HttpServletRequest request) {

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String event_pageNum = request.getParameter("pageNum");
		if (event_pageNum != null) {
			try {
				pageNum = Integer.parseInt(event_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String event_countPerPage = request.getParameter("countPerPage");
		if (event_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(event_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 prodcut 목록 전체 조회
		Map map = managerPageService.getManagerEventList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);

		return "managerEvent";
	}

	@RequestMapping("/managerEventUpdate")
	public String managerEventUpdate(@RequestParam("eventNo") String memberNo, Model model) {
		// 클릭한 이벤트의 정보를 조회
		EventDTO event = managerPageService.getEventByEventNo(memberNo);

		// 조회된 회원 정보를 모델에 추가
		model.addAttribute("event", event);

		// managerMemberDetails.jsp로 이동
		return "managerEventUpdate";

	}

	@RequestMapping("/managerEventDoUpdate")
	public String managerEventDoUpdate(@ModelAttribute EventDTO updatedEvent, Model model) {
		// ManagerPageService를 통해 업데이트 메서드 호출
		managerPageService.updateEvent(updatedEvent);

		// 업데이트된 이벤트의 정보를 조회
		EventDTO event = managerPageService.getEventByEventNo(updatedEvent.getEventNo());

		// 조회된 이벤트 데이터를 모델에 추가
		model.addAttribute("event", event);

		// 리다이렉트
		return "redirect:/managerEvent";
	}

	@RequestMapping("/managerEventInsert")
	public String managerEventInsert() {

		return "managerEventInsert";
	}

	@RequestMapping("/managerEventDoInsert")
	public String managernoticeDoInsert(@ModelAttribute EventDTO event) {
		managerPageService.insertEvent(event);
		return "redirect:/managerEvent";
	}

	@RequestMapping(value = "/managerEventDelete", method = RequestMethod.POST)
	public String managerEventDelete(@RequestParam(value = "eventNo", required = false) List<String> eventNoList) {
		if (eventNoList != null && !eventNoList.isEmpty()) {
			// 여기서 eventNoList를 이용하여 삭제 로직을 수행
			managerPageService.deleteEvents(eventNoList);
		}
		return "redirect:/managerEvent";
	}

	// 관리자 쿠폰
	@RequestMapping("/managerCoupon")
	public String managerCoupon(Model model, @ModelAttribute CouponDTO coupondto, HttpServletRequest request) {

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String coupon_pageNum = request.getParameter("pageNum");
		if (coupon_pageNum != null) {
			try {
				pageNum = Integer.parseInt(coupon_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String coupon_countPerPage = request.getParameter("countPerPage");
		if (coupon_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(coupon_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 prodcut 목록 전체 조회
		Map map = managerPageService.getManagerCouponList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);
		return "managerCoupon";
	}

	@RequestMapping("/managerCouponDelete")
	public String managerCouponDelete(@RequestParam("couponno") String couponNo) {

		// ManagerPageService를 통해 해당 쿠폰을 삭제하는 메서드 호출
		managerPageService.deleteCouponByCouponNo(couponNo);

		// 삭제 후 목록 페이지로 리다이렉트
		return "redirect:/managerCoupon";
	}

	@RequestMapping("/managerCouponInsert")
	public String managerCouponInsert() {

		return "managerCouponInsert";
	}

	@RequestMapping("/managerCouponDoInsert")
	public String managerCouponDoInsert(@RequestParam("serialno") String serialno,
			@RequestParam("coupondc") int coupondc, @RequestParam("startdate") Date startdate,
			@RequestParam("validdate") Date validdate, @RequestParam("possible") String possible) {
		// coupon 테이블에 insert하기 위해 CouponDTO 객체 생성
		CouponDTO couponDTO = new CouponDTO();
		couponDTO.setSerialno(serialno);
		couponDTO.setCoupondc(coupondc);
		couponDTO.setStartdate(startdate);
		couponDTO.setValiddate(validdate);
		couponDTO.setPossible(possible);

		// ManagerPageService를 통해 데이터 insert
		managerPageService.insertCoupon(couponDTO);

		// managerCoupon 페이지로 리다이렉트
		return "redirect:/managerCoupon";
	}

	@RequestMapping("/managerCouponUpdate")
	public String managerCouponUpdate(@RequestParam("couponno") String couponno, Model model) {
	    // 쿠폰 정보 가져오기
	    CouponDTO coupon = managerPageService.getCouponByCouponNo(couponno);

	    // 쿠폰을 사용하는 회원들의 정보 가져오기
	    List<MemberDTO> members = managerPageService.getMembersByCouponNo(couponno);

	    // 조회된 쿠폰 정보 및 회원 정보를 모델에 추가
	    model.addAttribute("coupon", coupon);

	    // 만약 members가 null 또는 길이가 0이면 null을 모델에 추가, 아니면 회원 정보 추가
	    if (members == null || members.isEmpty()) {
	        model.addAttribute("members", null);
	    } else {
	        model.addAttribute("members", members);
	        System.out.println("멤버" + members.get(0).getName());
	    }

	    return "managerCouponUpdate";
	}


	@RequestMapping("managerCouponDoUpdate")
	public String managerCouponDoUpdate(@ModelAttribute CouponDTO updatedCoupon) {
		// ManagerPageService를 통해 쿠폰 정보 업데이트
		managerPageService.updateCoupon(updatedCoupon);

		// 목록 페이지로 리다이렉트
		return "redirect:/managerCoupon";
	}
//	상품문의 --------------------------------------------------------------
	
	@RequestMapping("/managerInquiry")
	public String managerInquiry(Model model, HttpServletRequest request) {

		// 안 넘어왔을때 0을 사용할 수 없으니까
		// 초기값 지정
		int pageNum = 1; // 현재 페이지
		int countPerPage = 10; // 한 페이지에 몇개 보여줄지

		String inquiry_pageNum = request.getParameter("pageNum");
		if (inquiry_pageNum != null) {
			try {
				pageNum = Integer.parseInt(inquiry_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String inquiry_countPerPage = request.getParameter("countPerPage");
		if (inquiry_countPerPage != null) {
			try {
				countPerPage = Integer.parseInt(inquiry_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 prodcut 목록 전체 조회
		Map map = managerPageService.managerInquiry(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model에 담아서
		model.addAttribute("data", map);

		return "managerInquiry";
	}
	
	@RequestMapping("/insertAnswer")
	public String insertAnswer(@ModelAttribute InquiryDTO dto) {
		int result = managerPageService.insertAnswer(dto);
		System.out.println("답변결과" + result);
		return "managerInquiry";
	}
}