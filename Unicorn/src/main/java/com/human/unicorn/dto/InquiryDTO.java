package com.human.unicorn.dto;

import java.sql.Date;
import java.util.List;

public class InquiryDTO {
	
	private String inquiryNo;
	private int userNo;
	private int productNo;
	private String inquiryTitle;
	private String inquiryDetails;
	private Date inquiryDate;
	private String productName;
	private String mainimg1;
	private List list_remove;
	private int startNum;
	private int endNum;
	private String id;
	private String answerDetails;
	private Date answerDate;
	
	public String getAnswerDetails() {
		return answerDetails;
	}
	public void setAnswerDetails(String answerDetails) {
		this.answerDetails = answerDetails;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMainimg1() {
		return mainimg1;
	}
	public void setMainimg1(String mainimg1) {
		this.mainimg1 = mainimg1;
	}

	

	public String getInquiryNo() {
		return inquiryNo;
	}
	public void setInquiryNo(String inquiryNo) {
		this.inquiryNo = inquiryNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getInquiryTitle() {
		return inquiryTitle;
	}
	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}
	public String getInquiryDetails() {
		return inquiryDetails;
	}
	public void setInquiryDetails(String inquiryDetails) {
		this.inquiryDetails = inquiryDetails;
	}
	public Date getInquiryDate() {
		return inquiryDate;
	}
	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
		
	}
	@Override
	public String toString() {
		return "InquiryDTO [inquiryno=" + inquiryNo + ", userNo=" + userNo + ", productno=" + productNo
				+ ", inquirytitle=" + inquiryTitle + ", inquirydetails=" + inquiryDetails + ", inquirydate="
				+ inquiryDate + ", productName=" + productName + ", list_remove=" + list_remove + ", staruNum="
				+ startNum + ", endNum=" + endNum + "]";
	}
	public List getList_remove() {
		return list_remove;
	}
	public void setList_remove(List list_remove) {
		this.list_remove = list_remove;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	
	
	

}
