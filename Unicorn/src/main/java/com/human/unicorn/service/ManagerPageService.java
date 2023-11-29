package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.dto.MemberDTO;

public interface ManagerPageService {

	List<ProductDTO> productList();

	Map getManagerProductList(int pageNum, int countPerPage);

	ProductDTO getProductByProductNo(int productNo);

	void updateProduct(ProductDTO product);

	void deleteProducts(List<Integer> productNoList);

	void insertProduct(ProductDTO product);

	Map getManagerMemberList(int pageNum, int countPerPage);

	Map getManagerNoticeList(int pageNum, int countPerPage);

	void deleteMembers(List<Integer> userNos);

	MemberDTO getMemberByMemberNo(int memberNo);

	NoticeDTO getNoticeByNoticeNo(String noticeNo);

	void updateNotice(NoticeDTO updatedNotice);

	int getNextNoticeSeq();

	void insertNotice(NoticeDTO notice);

	void deleteNotices(List<String> noticeNoList);

	Map getManagerEventList(int pageNum, int countPerPage);

	EventDTO getEventByEventNo(String eventNo);

	void updateEvent(EventDTO updatedEvent);

	void insertEvent(EventDTO event);

	void deleteEvents(List<String> eventNoList);

	Map getManagerCouponList(int pageNum, int countPerPage);

	void deleteCouponByCouponNo(String couponNo);

	void insertCoupon(CouponDTO couponDTO);

	CouponDTO getCouponByCouponNo(String couponno);

	void updateCoupon(CouponDTO updatedCoupon);

	List<MemberDTO> getMembersByCouponNo(String couponno);

	public Map managerInquiry(int pageNum, int countPerPage);

	public int insertAnswer(InquiryDTO dto);
}
