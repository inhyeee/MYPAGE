package com.human.unicorn.dto;

public class CartDTO {
	private String cartNo;
	private int productNo;
	private String optionNo;
	private String productName;
	private String mainImg1;
	private String productSize;
	private int price;
	private int userNo;
	private int cartCount;
	public String getCartNo() {
		return cartNo;
	}
	public void setCartNo(String cartNo) {
		this.cartNo = cartNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(String optionNo) {
		this.optionNo = optionNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getMainImg1() {
		return mainImg1;
	}
	public void setMainImg1(String mainImg1) {
		this.mainImg1 = mainImg1;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getUserNo() {
		return userNo;
	}
	@Override
	public String toString() {
		return "CartDTO [cartNo=" + cartNo + ", productNo=" + productNo + ", optionNo=" + optionNo + ", productName="
				+ productName + ", mainImg1=" + mainImg1 + ", productSize=" + productSize + ", price=" + price
				+ ", userNo=" + userNo + ", cartCount=" + cartCount + "]";
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getCartCount() {
		return cartCount;
	}
	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	
	
}
