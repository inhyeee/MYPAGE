package com.human.unicorn.dto;

public class WishlistDTO {
	
	private String wishlistno;
	private int productno;
	private int userno;
	private String mainimg1;
	private String productname;
	
	private int startNum;
	private int endNum;
	
	public String getWishlistno() {
		return wishlistno;
	}
	public void setWishlistno(String wishlistno) {
		this.wishlistno = wishlistno;
	}
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
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
	@Override
	public String toString() {
		return "WishlistDTO [wishlistno=" + wishlistno + ", productno=" + productno + ", userno=" + userno
				+ ", mainimg1=" + mainimg1 + ", productname=" + productname + "]";
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
