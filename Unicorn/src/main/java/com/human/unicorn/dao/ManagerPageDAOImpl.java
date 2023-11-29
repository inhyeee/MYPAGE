package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.ProductDTO;
import com.human.unicorn.dto.CouponDTO;
import com.human.unicorn.dto.EventDTO;
import com.human.unicorn.dto.InquiryDTO;
import com.human.unicorn.dto.NoticeDTO;
import com.human.unicorn.dto.MemberDTO;

@Repository
public class ManagerPageDAOImpl implements ManagerPageDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProductDTO> productList() {
		List<ProductDTO> productList = sqlSession.selectList("product.selectProductList");
		return productList;
	}

	@Override
	public List managerProduct(ProductDTO productdto) {
		List<ProductDTO> managerProductList = sqlSession.selectList("product.productList", productdto);
		return managerProductList;
	}

	@Override
	public int productTotal() {
		int total = sqlSession.selectOne("product.productTotal");
		return total;
	}

	@Override
	public ProductDTO getProductByProductNo(int productNo) {
		return sqlSession.selectOne("product.getProductByProductNo", productNo);
	}

	@Override
	public void updateProduct(ProductDTO product) {
		sqlSession.update("product.updateProduct", product);

	}

	@Override
	public void deleteProduct(int productNo) {
		sqlSession.delete("product.deleteProduct", productNo);
	}

	@Override
	public void insertProduct(ProductDTO product) {
		sqlSession.insert("product.insertProduct", product);
	}

	@Override
	public List managerMember(MemberDTO memberdto) {
		System.out.println(memberdto.getStartNum());
		System.out.println(memberdto.getEndNum());

		List<MemberDTO> managerMemberList = sqlSession.selectList("manager.memberList", memberdto);
		return managerMemberList;
	}

	@Override
	public int memberTotal() {
		int total = sqlSession.selectOne("manager.memberTotal");
		return total;
	}

	@Override
	public List managerNotice(NoticeDTO noticedto) {
		List<NoticeDTO> managerMemberList = sqlSession.selectList("manager.noticeList", noticedto);
		return managerMemberList;
	}

	@Override
	public int noticeTotal() {
		int total = sqlSession.selectOne("manager.noticeTotal");
		return total;
	}

	@Override
	public void deleteMembers(List<Integer> userNos) {
		if (userNos != null && !userNos.isEmpty()) {
			sqlSession.delete("manager.deleteMembers", userNos);
		}
	}

	@Override
	public MemberDTO getMemberByMemberNo(int memberNo) {
		return sqlSession.selectOne("manager.getMemberByMemberNo", memberNo);
	}

	@Override
	public NoticeDTO getNoticeByNoticeNo(String noticeNo) {
		return sqlSession.selectOne("manager.getNoticeByNoticeNo", noticeNo);
	}

	@Override
	public void updateNotice(NoticeDTO notice) {
		sqlSession.update("manager.updateNotice", notice);

	}

	@Override
	public int getNextNoticeSeq() {
		return sqlSession.selectOne("manager.getNextNoticeSeq");
	}

	@Override
	public void insertNotice(NoticeDTO notice) {
		sqlSession.insert("manager.insertNotice", notice);
	}

	@Override
	public void deleteNotices(List<String> noticeNoList) {
		if (noticeNoList != null && !noticeNoList.isEmpty()) {
			sqlSession.delete("manager.deleteNotices", noticeNoList);
		}
	}

	@Override
	public List eventEvent(EventDTO eventdto) {
		List<EventDTO> managerMemberList = sqlSession.selectList("manager.eventList", eventdto);
		return managerMemberList;
	}

	@Override
	public int enevtTotal() {
		int total = sqlSession.selectOne("manager.eventTotal");
		return total;
	}

	@Override
	public EventDTO getEventByEventNo(String eventNo) {
		return sqlSession.selectOne("manager.getEventByEventNo", eventNo);
	}

	@Override
	public void updateEvent(EventDTO updatedEvent) {
		sqlSession.update("manager.updateEvent", updatedEvent);
	}

	@Override
	public void insertEvent(EventDTO event) {
		sqlSession.insert("insertEvent", event);
	}

	@Override
	public void deleteEvent(String eventNo) {
		sqlSession.delete("deleteEvent", eventNo);
	}

	@Override
	public List couponEvent(CouponDTO coupondto) {
		List<CouponDTO> managerCouponList = sqlSession.selectList("manager.couponList", coupondto);
		return managerCouponList;
	}

	@Override
	public int couponTotal() {
		int total = sqlSession.selectOne("manager.couponTotal");
		return total;
	}

	@Override
	public void deleteCouponByCouponNo(String couponNo) {
		sqlSession.delete("manager.deleteCouponByCouponNo", couponNo);
	}

	@Override
	public void insertCoupon(CouponDTO couponDTO) {
		sqlSession.insert("manager.insertCoupon", couponDTO);
	}

	@Override
	public CouponDTO getCouponByCouponNo(String couponno) {
		return sqlSession.selectOne("manager.getCouponByCouponNo", couponno);
	}

	@Override
	public void updateCoupon(CouponDTO updatedCoupon) {
		sqlSession.update("manager.updateCoupon", updatedCoupon);
	}

	@Override
	public List<MemberDTO> getMembersByCouponNo(String couponno) {
		return sqlSession.selectList("manager.getMembersByCouponNo", couponno);
	}

////////////////////////////////////////////////////////////////////////////상품문의

	@Override
	public List managerInquiry(InquiryDTO inquirydto) {
		List<InquiryDTO> inquiryList = sqlSession.selectList("manager.inquiryList", inquirydto);
		return inquiryList;
	}

	@Override
	public int inquiryTotal() {
		int total = sqlSession.selectOne("manager.inquiryTotal");
		return total;
	}

	public int insertAnswer(InquiryDTO dto) {
		int result = sqlSession.update("manager.insertAnswer", dto);
		return result;
	}

}
