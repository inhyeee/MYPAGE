package com.human.unicorn.dto;

import java.sql.Date;
import java.util.List;

public class InquiryDTO {
	
	String inquiryno;
	int userno;
	int productno;
	String inquirytitle;
	String inquirydetails;
	Date inquirydate;
	String productname;
	
	List list_remove;
	
	public String getInquiryno() {
		return inquiryno;
	}
	public void setInquiryno(String inquiryno) {
		this.inquiryno = inquiryno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public String getInquirytitle() {
		return inquirytitle;
	}
	public void setInquirytitle(String inquirytitle) {
		this.inquirytitle = inquirytitle;
	}
	public String getInquirydetails() {
		return inquirydetails;
	}
	public void setInquirydetails(String inquirydetails) {
		this.inquirydetails = inquirydetails;
	}
	public Date getInquirydate() {
		return inquirydate;
	}
	public void setInquirydate(Date inquirydate) {
		this.inquirydate = inquirydate;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
		
	}
	@Override
	public String toString() {
		return "InquiryDTO [inquiryno=" + inquiryno + ", userno=" + userno + ", productno=" + productno
				+ ", inquirytitle=" + inquirytitle + ", inquirydetails=" + inquirydetails + ", inquirydate="
				+ inquirydate + ", productname=" + productname + "]";
	}
	
	public List getList_remove() {
		return list_remove;
	}
	public void setList_remove(List list_remove) {
		this.list_remove = list_remove;
	}

}
