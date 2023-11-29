package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.dto.MemberDTO;

public interface ManagerPageDAO {

	List<ProductDTO> productList();

	List managerProduct(ProductDTO productdto);

	int productTotal();

	ProductDTO getProductByProductNo(int productNo);

	void updateProduct(ProductDTO product);

	void deleteProduct(int productNo);

	void insertProduct(ProductDTO product);

	List managerMember(MemberDTO memberdto);

	int memberTotal();

	List managerNotice(NoticeDTO noticeDTO);

	int noticeTotal();

	void deleteMembers(List<Integer> userNos);

	MemberDTO getMemberByMemberNo(int memberNo);

	NoticeDTO getNoticeByNoticeNo(String noticeNo);

	void updateNotice(NoticeDTO notice);

	int getNextNoticeSeq();

	void insertNotice(NoticeDTO notice);

	void deleteNotices(List<String> noticeNoList);

	List eventEvent(EventDTO eventdto);

	int enevtTotal();

	EventDTO getEventByEventNo(String eventNo);

	void updateEvent(EventDTO updatedEvent);

	void insertEvent(EventDTO event);

	void deleteEvent(String eventNo);

	List couponEvent(CouponDTO dto);

	int couponTotal();

	void deleteCouponByCouponNo(String couponNo);

	void insertCoupon(CouponDTO couponDTO);

	CouponDTO getCouponByCouponNo(String couponno);

	void updateCoupon(CouponDTO updatedCoupon);

	List<MemberDTO> getMembersByCouponNo(String couponno);

	public List managerInquiry(InquiryDTO inquirydto);

	public int inquiryTotal();

	public int insertAnswer(InquiryDTO dto);
}
