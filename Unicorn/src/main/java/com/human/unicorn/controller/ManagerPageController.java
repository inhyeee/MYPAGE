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
		System.out.println("������ ����");
		return "managerMain";
	}

	@RequestMapping("/managerProduct")
	public String managerProduct(Model model, @ModelAttribute ProductDTO dto, HttpServletRequest request) {

		List<ProductDTO> productList = productService.productList();
		model.addAttribute("productList", productList);

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� prodcut ��� ��ü ��ȸ
		Map map = managerPageService.getManagerProductList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
		model.addAttribute("data", map);
		return "managerProduct";
	}

	@RequestMapping("/managerProductUpdate")
	public String managerProductUpdate(@RequestParam("productNo") int productNo, Model model) {
		System.out.println(productNo);
		// Ư�� productNo�� �ش��ϴ� ��ǰ ��ȸ
		ProductDTO product = managerPageService.getProductByProductNo(productNo);
		System.out.println(product);
		// ��ȸ�� ��ǰ �����͸� �𵨿� �߰�
		model.addAttribute("product", product);

		return "managerProductUpdate";
	}

	@RequestMapping("/managerProductDoUpdate")
	public String managerProductDoUpdate(@ModelAttribute ProductDTO updatedProduct, Model model) {
		System.out.println("������Ʈ ����");
		// ManagerPageService�� ���� ������Ʈ �޼��� ȣ��
		managerPageService.updateProduct(updatedProduct);

		// Ư�� productNo�� �ش��ϴ� ��ǰ ��ȸ
		ProductDTO product = managerPageService.getProductByProductNo(updatedProduct.getProductNo());

		// ��ȸ�� ��ǰ �����͸� �𵨿� �߰�
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
		// ����� �Է� ���� �޾ƿ�
		String productName = request.getParameter("productName");
		String productEx = request.getParameter("productEx");
		String mainImg1 = request.getParameter("mainImg1");
		String mainImg2 = request.getParameter("mainImg2");
		String mainImg3 = request.getParameter("mainImg3");
		String fabric = request.getParameter("fabric");
		String company = request.getParameter("company");
		int popularity = Integer.parseInt(request.getParameter("popularity"));
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));

		// ProductDTO ��ü�� ����

		product.setProductName(productName);
		product.setProductEx(productEx);
		product.setMainImg1(mainImg1);
		product.setMainImg2(mainImg2);
		product.setMainImg3(mainImg3);
		product.setFabric(fabric);
		product.setCompany(company);
		product.setPopularity(popularity);
		product.setProductPrice(productPrice);

		// ManagerPageService�� ���� insertProduct �޼��� ȣ��
		managerPageService.insertProduct(product);

		// �����̷�Ʈ
		return "redirect:/managerProduct";
	}

	// ������ ��������
	@RequestMapping("managerNotice")
	public String managerNotis(Model model, @ModelAttribute NoticeDTO noticedto, HttpServletRequest request) {

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� notice ��� ��ü ��ȸ
		Map map = managerPageService.getManagerNoticeList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
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
		System.out.println("������Ʈ ����");
		// ManagerPageService�� ���� ������Ʈ �޼��� ȣ��
		managerPageService.updateNotice(updatedNotice);

		// Ư�� productNo�� �ش��ϴ� ��ǰ ��ȸ
		NoticeDTO notice = managerPageService.getNoticeByNoticeNo(updatedNotice.getNoticeNo());

		// ��ȸ�� ��ǰ �����͸� �𵨿� �߰�
		model.addAttribute("notice", notice);
		return "redirect:/managerNotice";
	}

	// �������� �߰��ϱ�
	@RequestMapping("/managerNoticeInsert")
	public String managerNoticeInsert() {

		return "managerNoticeInsert";
	}

	@RequestMapping("/managernoticeDoInsert")
	public String managernoticeDoInsert(@ModelAttribute NoticeDTO notice) {
		System.out.println(notice.getNoticeTitle());
		System.out.println(notice.getNoticeDetails());

		// ���� ��¥�� ��������
		long currentTime = System.currentTimeMillis();
		Date noticeDate = new Date(currentTime);

		// notice ��ü�� ���� ��¥ ����
		notice.setNoticeDate(noticeDate);

		// �������� Ȱ���� ������ noticeNo ����
		int noticeNo = managerPageService.getNextNoticeSeq();
		notice.setNoticeNo("n" + noticeNo);

		// ManagerPageService�� ���� insertNotice �޼��� ȣ��
		managerPageService.insertNotice(notice);

		// �����̷�Ʈ
		return "redirect:/managerNotice";
	}

	@RequestMapping("/managerNoticeDelete")
	public String managerNoticeDelete(@RequestParam(value = "noticeNo", required = false) List<String> noticeNoList) {
		if (noticeNoList != null && !noticeNoList.isEmpty()) {
			managerPageService.deleteNotices(noticeNoList);
		}
		return "redirect:/managerNotice";
	}

	// ������ ȸ�� ����
	@RequestMapping("/managerMember")
	public String managerMember(Model model, @ModelAttribute MemberDTO memberdto, HttpServletRequest request) {

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� prodcut ��� ��ü ��ȸ
		Map map = managerPageService.getManagerMemberList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
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
		// Ŭ���� ȸ���� ������ ��ȸ
		MemberDTO member = managerPageService.getMemberByMemberNo(memberNo);

		// ��ȸ�� ȸ�� ������ �𵨿� �߰�
		model.addAttribute("member", member);

		// managerMemberDetails.jsp�� �̵�
		return "managerMemberDetails";

	}

	// ������ �̺�Ʈ
	@RequestMapping("/managerEvent")
	public String managerEvent(Model model, @ModelAttribute EventDTO eventdto, HttpServletRequest request) {

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� prodcut ��� ��ü ��ȸ
		Map map = managerPageService.getManagerEventList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
		model.addAttribute("data", map);

		return "managerEvent";
	}

	@RequestMapping("/managerEventUpdate")
	public String managerEventUpdate(@RequestParam("eventNo") String memberNo, Model model) {
		// Ŭ���� �̺�Ʈ�� ������ ��ȸ
		EventDTO event = managerPageService.getEventByEventNo(memberNo);

		// ��ȸ�� ȸ�� ������ �𵨿� �߰�
		model.addAttribute("event", event);

		// managerMemberDetails.jsp�� �̵�
		return "managerEventUpdate";

	}

	@RequestMapping("/managerEventDoUpdate")
	public String managerEventDoUpdate(@ModelAttribute EventDTO updatedEvent, Model model) {
		// ManagerPageService�� ���� ������Ʈ �޼��� ȣ��
		managerPageService.updateEvent(updatedEvent);

		// ������Ʈ�� �̺�Ʈ�� ������ ��ȸ
		EventDTO event = managerPageService.getEventByEventNo(updatedEvent.getEventNo());

		// ��ȸ�� �̺�Ʈ �����͸� �𵨿� �߰�
		model.addAttribute("event", event);

		// �����̷�Ʈ
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
			// ���⼭ eventNoList�� �̿��Ͽ� ���� ������ ����
			managerPageService.deleteEvents(eventNoList);
		}
		return "redirect:/managerEvent";
	}

	// ������ ����
	@RequestMapping("/managerCoupon")
	public String managerCoupon(Model model, @ModelAttribute CouponDTO coupondto, HttpServletRequest request) {

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� prodcut ��� ��ü ��ȸ
		Map map = managerPageService.getManagerCouponList(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
		model.addAttribute("data", map);
		return "managerCoupon";
	}

	@RequestMapping("/managerCouponDelete")
	public String managerCouponDelete(@RequestParam("couponno") String couponNo) {

		// ManagerPageService�� ���� �ش� ������ �����ϴ� �޼��� ȣ��
		managerPageService.deleteCouponByCouponNo(couponNo);

		// ���� �� ��� �������� �����̷�Ʈ
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
		// coupon ���̺� insert�ϱ� ���� CouponDTO ��ü ����
		CouponDTO couponDTO = new CouponDTO();
		couponDTO.setSerialno(serialno);
		couponDTO.setCoupondc(coupondc);
		couponDTO.setStartdate(startdate);
		couponDTO.setValiddate(validdate);
		couponDTO.setPossible(possible);

		// ManagerPageService�� ���� ������ insert
		managerPageService.insertCoupon(couponDTO);

		// managerCoupon �������� �����̷�Ʈ
		return "redirect:/managerCoupon";
	}

	@RequestMapping("/managerCouponUpdate")
	public String managerCouponUpdate(@RequestParam("couponno") String couponno, Model model) {
	    // ���� ���� ��������
	    CouponDTO coupon = managerPageService.getCouponByCouponNo(couponno);

	    // ������ ����ϴ� ȸ������ ���� ��������
	    List<MemberDTO> members = managerPageService.getMembersByCouponNo(couponno);

	    // ��ȸ�� ���� ���� �� ȸ�� ������ �𵨿� �߰�
	    model.addAttribute("coupon", coupon);

	    // ���� members�� null �Ǵ� ���̰� 0�̸� null�� �𵨿� �߰�, �ƴϸ� ȸ�� ���� �߰�
	    if (members == null || members.isEmpty()) {
	        model.addAttribute("members", null);
	    } else {
	        model.addAttribute("members", members);
	        System.out.println("���" + members.get(0).getName());
	    }

	    return "managerCouponUpdate";
	}


	@RequestMapping("managerCouponDoUpdate")
	public String managerCouponDoUpdate(@ModelAttribute CouponDTO updatedCoupon) {
		// ManagerPageService�� ���� ���� ���� ������Ʈ
		managerPageService.updateCoupon(updatedCoupon);

		// ��� �������� �����̷�Ʈ
		return "redirect:/managerCoupon";
	}
//	��ǰ���� --------------------------------------------------------------
	
	@RequestMapping("/managerInquiry")
	public String managerInquiry(Model model, HttpServletRequest request) {

		// �� �Ѿ������ 0�� ����� �� �����ϱ�
		// �ʱⰪ ����
		int pageNum = 1; // ���� ������
		int countPerPage = 10; // �� �������� � ��������

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

		// db���� prodcut ��� ��ü ��ȸ
		Map map = managerPageService.managerInquiry(pageNum, countPerPage);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);

		logger.info("pageNum : " + pageNum);
		logger.error("countPerPage : " + countPerPage);

		// model�� ��Ƽ�
		model.addAttribute("data", map);

		return "managerInquiry";
	}
	
	@RequestMapping("/insertAnswer")
	public String insertAnswer(@ModelAttribute InquiryDTO dto) {
		int result = managerPageService.insertAnswer(dto);
		System.out.println("�亯���" + result);
		return "managerInquiry";
	}
}