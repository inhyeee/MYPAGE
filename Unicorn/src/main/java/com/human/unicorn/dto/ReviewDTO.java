package com.human.unicorn.dto;

import java.sql.Date;

public class ReviewDTO {

	private String id;
	private String productsize;
	private String productname;
	
	private String reviewno;
	private int userno;
	private int productno;
	private Date reviewdate;
	private String reviewimg;
	private String reviewdetails;
	private int reviewrates;
	
	private int startNum;
	private int endNum;
	

	public String getReviewno() {
		return reviewno;
	}
	public void setReviewno(String reviewno) {
		this.reviewno = reviewno;
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
	public Date getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}
	public String getReviewimg() {
		return reviewimg;
	}
	public void setReviewimg(String reviewimg) {
		this.reviewimg = reviewimg;
	}
	public String getReviewdetails() {
		return reviewdetails;
	}
	public void setReviewdetails(String reviewdetails) {
		this.reviewdetails = reviewdetails;
	}
	public int getReviewrates() {
		return reviewrates;
	}
	public void setReviewrates(int reviewrates) {
		this.reviewrates = reviewrates;
	}
	
	@Override
	public String toString() {
		return "ReviewDTO [id=" + id + ", productsize=" + productsize + ", productname=" + productname + ", reviewno="
				+ reviewno + ", userno=" + userno + ", productno=" + productno + ", reviewdate=" + reviewdate
				+ ", reviewimg=" + reviewimg + ", reviewdetails=" + reviewdetails + ", reviewrates=" + reviewrates
				+ ", startNum=" + startNum + ", endNum=" + endNum + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductsize() {
		return productsize;
	}
	public void setProductsize(String productsize) {
		this.productsize = productsize;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
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


