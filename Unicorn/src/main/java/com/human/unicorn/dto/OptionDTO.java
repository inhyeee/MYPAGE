package com.human.unicorn.dto;

public class OptionDTO {
	
	private int productNo;
	private String optionNo;
	private String productSize;
	private Long  price;
	
	
	
	
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
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public Long  getPrice() {
		return price;
	}
	public void setPrice(Long  price) {
		this.price = price;
	}
	public int getInventoryCount() {
		return inventoryCount;
	}
	public void setInventoryCount(int inventoryCount) {
		this.inventoryCount = inventoryCount;
	}
	private int inventoryCount;




	@Override
	public String toString() {
		return "OptionDTO [productNo=" + productNo + ", optionNo=" + optionNo + ", productSize=" + productSize
				+ ", price=" + price + ", inventoryCount=" + inventoryCount + "]";
	}

	
	
	
}
