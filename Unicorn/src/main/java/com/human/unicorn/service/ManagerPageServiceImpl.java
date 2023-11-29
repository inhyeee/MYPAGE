package com.human.unicorn.service;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.human.unicorn.dao.ProductDAO;
import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.dao.ManagerPageDAO;
import com.human.unicorn.dto.MemberDTO;

@Service
public class ManagerPageServiceImpl implements ManagerPageService {

//	EmpDAO empDAO = new EmpDAOImpl();
	@Autowired
	ProductDAO productDAO;
	@Autowired
	ManagerPageDAO managerPageDAO;

	@Override
	public List productList() {
		List productList = productDAO.productList();

		return productList;
	}

	@Override
	public Map getManagerProductList(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

		// ���� �������� ������ ���� + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage - 1;

		ProductDTO dto = new ProductDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

		// ������ ����Ʈ�� �� �̾���
		List list = managerPageDAO.managerProduct(dto);
		System.out.println(list.size());
		// ��ü ȸ������ �̾���
		int total = managerPageDAO.productTotal();

		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public ProductDTO getProductByProductNo(int productNo) {
		return managerPageDAO.getProductByProductNo(productNo);
	}

	@Override
	public void updateProduct(ProductDTO product) {
		managerPageDAO.updateProduct(product);
	}

	@Override
	public void deleteProducts(List<Integer> productNoList) {
		if (productNoList != null && !productNoList.isEmpty()) {
			for (Integer productNo : productNoList) {
				managerPageDAO.deleteProduct(productNo);
			}
		}
	}

	@Override
	public void insertProduct(ProductDTO product) {
		managerPageDAO.insertProduct(product);
	}

	// ȸ��
	@Override
	public Map getManagerMemberList(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

		// ���� �������� ������ ���� + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage - 1;

		MemberDTO dto = new MemberDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		System.out.println(startNum + "\n" + endNum);
		System.out.println("----------------");
		System.out.println(dto.getStartNum());
		System.out.println(dto.getEndNum());
		// ������ ����Ʈ�� �� �̾���
		List list = managerPageDAO.managerMember(dto);
		System.out.println(list.size());
		// ��ü ȸ������ �̾���
		int total = managerPageDAO.memberTotal();

		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public Map<String, Object> getManagerNoticeList(int pageNum, int countPerPage) {
		int startNum = (pageNum - 1) * countPerPage + 1;
		int endNum = pageNum * countPerPage;

		NoticeDTO dto = new NoticeDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

		// �����ͺ��̽����� NoticeDTO ����Ʈ ��������
		List<NoticeDTO> list = managerPageDAO.managerNotice(dto);

		// NoticeDTO ����Ʈ�� NoticeDate �������� �������� ����
		Collections.sort(list,
				Comparator.comparing(NoticeDTO::getNoticeDate, Comparator.nullsLast(Comparator.reverseOrder())));

		// ��ü �������� �� ��������
		int total = managerPageDAO.noticeTotal();

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public void deleteMembers(List<Integer> userNos) {
		if (userNos != null && !userNos.isEmpty()) {
			managerPageDAO.deleteMembers(userNos);
		}
	}

	@Override
	public MemberDTO getMemberByMemberNo(int memberNo) {
		return managerPageDAO.getMemberByMemberNo(memberNo);
	}

	// ��������
	@Override
	public NoticeDTO getNoticeByNoticeNo(String noticeNo) {
		return managerPageDAO.getNoticeByNoticeNo(noticeNo);
	}

	// �������� ����
	@Override
	public void updateNotice(NoticeDTO updateNotice) {
		managerPageDAO.updateNotice(updateNotice);

	}

	@Override
	public int getNextNoticeSeq() {
		return managerPageDAO.getNextNoticeSeq();
	}

	@Override
	public void insertNotice(NoticeDTO notice) {
		managerPageDAO.insertNotice(notice);
	}

	@Override
	public void deleteNotices(List<String> noticeNoList) {
		managerPageDAO.deleteNotices(noticeNoList);
	}

	@Override
	public Map getManagerEventList(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

		// ���� �������� ������ ���� + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage - 1;

		EventDTO dto = new EventDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

		// ������ ����Ʈ�� �� �̾���
		List list = managerPageDAO.eventEvent(dto);
		System.out.println(list.size());
		// ��ü ȸ������ �̾���
		int total = managerPageDAO.enevtTotal();

		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public EventDTO getEventByEventNo(String eventNo) {
		return managerPageDAO.getEventByEventNo(eventNo);
	}

	@Override
	@Transactional
	public void updateEvent(EventDTO updatedEvent) {
		managerPageDAO.updateEvent(updatedEvent);
	}

	@Override
	public void insertEvent(EventDTO event) {
		managerPageDAO.insertEvent(event);
	}

	@Override
	public void deleteEvents(List<String> eventNoList) {
		for (String eventNo : eventNoList) {
			managerPageDAO.deleteEvent(eventNo);
		}
	}

	@Override
	public Map getManagerCouponList(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

		// ���� �������� ������ ���� + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
//		endNum = startNum + countPerPage - 1;

		CouponDTO dto = new CouponDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

		// ������ ����Ʈ�� �� �̾���
		List list = managerPageDAO.couponEvent(dto);
		System.out.println(list.size());
		// ��ü ȸ������ �̾���
		int total = managerPageDAO.couponTotal();

		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public void deleteCouponByCouponNo(String couponNo) {
		managerPageDAO.deleteCouponByCouponNo(couponNo);
	}

	@Override
	public void insertCoupon(CouponDTO couponDTO) {
		managerPageDAO.insertCoupon(couponDTO);
	}

	@Override
	public CouponDTO getCouponByCouponNo(String couponno) {
		return managerPageDAO.getCouponByCouponNo(couponno);
	}

	@Override
	public void updateCoupon(CouponDTO updatedCoupon) {
		managerPageDAO.updateCoupon(updatedCoupon);
	}

	@Override
	public List<MemberDTO> getMembersByCouponNo(String couponno) {
		return managerPageDAO.getMembersByCouponNo(couponno);
	}
////////////////////////////////////////////////////////////////////////////��ǰ����

	@Override
	public Map managerInquiry(int pageNum, int countPerPage) {
		int startNum = 0, endNum = 0;

// ���� �������� ������ ���� + 1
		startNum = ((pageNum - 1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
//endNum = startNum + countPerPage - 1;

		InquiryDTO dto = new InquiryDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);

// ������ ����Ʈ�� �� �̾���
		List<InquiryDTO> list = managerPageDAO.managerInquiry(dto);

// ��ü ȸ������ �̾���
		int total = managerPageDAO.inquiryTotal();

		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	public int insertAnswer(InquiryDTO dto) {
		int result = managerPageDAO.insertAnswer(dto);
		return result;
	}
}
