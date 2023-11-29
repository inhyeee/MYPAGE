package com.human.unicorn.dto;

public class MypageDTO {

	private String name;
	private int userno;
	private String detailno;
	private String couponno;
	private int productno;
	private String productname;
	private int totalprice;
	private String orderno;
	private String orderstatus;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	@Override
	public String toString() {
		return "MypageDTO [name=" + name + ", userno=" + userno + ", detailno=" + detailno + ", couponno=" + couponno
				+ ", productno=" + productno + ", productname=" + productname + ", totalprice=" + totalprice
				+ ", orderno=" + orderno + ", orderstatus=" + orderstatus + "]";
	}

	public String getDetailno() {
		return detailno;
	}

	public void setDetailno(String detailno) {
		this.detailno = detailno;
	}

	public String getCouponno() {
		return couponno;
	}

	public void setCouponno(String couponno) {
		this.couponno = couponno;
	}

	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	
	
}
