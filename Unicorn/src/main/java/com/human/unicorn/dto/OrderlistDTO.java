package com.human.unicorn.dto;

public class OrderlistDTO {

	private int productno;
	private String mainimg1;
	private String productname;
	private String company;
	private int userno;
	private int orderquantity;
	private int totalprice;
	private String orderno;
	private String orderstatus;
	
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public String getMainimg1() {
		return mainimg1;
	}
	public void setMainimg1(String mainimg1) {
		this.mainimg1 = mainimg1;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getOrderquantity() {
		return orderquantity;
	}
	public void setOrderquantity(int orderquantity) {
		this.orderquantity = orderquantity;
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
	@Override
	public String toString() {
		return "OrderlistDTO [productno=" + productno + ", mainimg1=" + mainimg1 + ", productname=" + productname
				+ ", company=" + company + ", userno=" + userno + ", orderquantity=" + orderquantity + ", totalprice="
				+ totalprice + ", orderno=" + orderno + ", orderstatus=" + orderstatus + "]";
	}
	
	
}
