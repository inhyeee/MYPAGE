package com.human.unicorn.dto;

public class IndexbodyDTO {
	
	private int productno;
	private String productname;
	private String productex;
	private String mainImg1;
	private String mainImg2;
	private String mainImg3;
	private String fabric;
	private String company;
	private int popularity;
	private int productprice;
	
	
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
	public String getProductex() {
		return productex;
	}
	public void setProductex(String productex) {
		this.productex = productex;
	}
	public String getMainImg1() {
		return mainImg1;
	}
	public void setMainImg1(String mainImg1) {
		this.mainImg1 = mainImg1;
	}
	public String getMainImg2() {
		return mainImg2;
	}
	public void setMainImg2(String mainImg2) {
		this.mainImg2 = mainImg2;
	}
	public String getMainImg3() {
		return mainImg3;
	}
	public void setMainImg3(String mainImg3) {
		this.mainImg3 = mainImg3;
	}
	public String getFabric() {
		return fabric;
	}
	public void setFabric(String fabric) {
		this.fabric = fabric;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPopularity() {
		return popularity;
	}
	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	

	@Override
	public String toString() {
		return "IndexbodyDTO [productno=" + productno + ", productname=" + productname + ", productex=" + productex
				+ ", mainImg1=" + mainImg1 + ", mainImg2=" + mainImg2 + ", mainImg3=" + mainImg3 + ", fabric=" + fabric
				+ ", company=" + company + ", popularity=" + popularity + ", productprice=" + productprice + "]";
	}
}
