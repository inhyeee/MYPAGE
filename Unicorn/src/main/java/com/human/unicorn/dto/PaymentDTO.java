package com.human.unicorn.dto;

import java.sql.Date;

public class PaymentDTO {

	private String id;
	private String name;
	private String address;
	private String addressdetails;
	private String postcode;
	private String tel;
	private String email;
	private int userpoint;
	private int grade;
	private Date signupdate;
	private int cartcount;
	
	
	private String productname;
	private String productex;
	private String mainimg1;
	private String mainimg2;
	private String mainimg3;
	private String fabric;
	private String company;
	private int popularity;
	private int price;
	
	
	private int deliveryFee; 
	
	private String orderno;
	private int userno;
	private String productno;
	private String optionno;
	private int orderquantity;
	private String orderaddress;
	private String orderstatus;
	private int totalprice;
	private String message;
	
	private String paymentno;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressdetails() {
		return addressdetails;
	}
	public void setAddressdetails(String addressdetails) {
		this.addressdetails = addressdetails;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUserpoint() {
		return userpoint;
	}
	public void setUserpoint(int userpoint) {
		this.userpoint = userpoint;
	}
	
	
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date sigupdate) {
		this.signupdate = sigupdate;
	}
	public String getProductno() {
		return productno;
	}
	public void setProductno(String productno) {
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
	public String getMainimg1() {
		return mainimg1;
	}
	public void setMainimg1(String mainimg1) {
		this.mainimg1 = mainimg1;
	}
	public String getMainimg2() {
		return mainimg2;
	}
	public void setMainimg2(String mainimg2) {
		this.mainimg2 = mainimg2;
	}
	public String getMainimg3() {
		return mainimg3;
	}
	public void setMainimg3(String mainimg3) {
		this.mainimg3 = mainimg3;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "PaymentDTO [id=" + id + ", name=" + name + ", address=" + address + ", addressdetails=" + addressdetails
				+ ", postcode=" + postcode + ", tel=" + tel + ", email=" + email + ", userpoint=" + userpoint
				+ ", grade=" + grade + ", signupdate=" + signupdate + ", cartcount=" + cartcount + ", productname="
				+ productname + ", productex=" + productex + ", mainimg1=" + mainimg1 + ", mainimg2=" + mainimg2
				+ ", mainimg3=" + mainimg3 + ", fabric=" + fabric + ", company=" + company + ", popularity="
				+ popularity + ", price=" + price + ", deliveryFee=" + deliveryFee + ", orderno=" + orderno
				+ ", userno=" + userno + ", productno=" + productno + ", optionno=" + optionno + ", orderquantity="
				+ orderquantity + ", orderaddress=" + orderaddress + ", orderstatus=" + orderstatus + ", totalprice=" + totalprice + ", message=" + message   
				+ ", paymentno=" + paymentno + "]";
	}
	public int getCartcount() {
		return cartcount;
	}
	public void setCartcount(int cartcount) {
		this.cartcount = cartcount;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getOptionno() {
		return optionno;
	}
	public void setOptionno(String optionno) {
		this.optionno = optionno;
	}
	public int getOrderquantity() {
		return orderquantity;
	}
	public void setOrderquantity(int orderquantity) {
		this.orderquantity = orderquantity;
	}
	public String getOrderaddress() {
		return orderaddress;
	}
	public void setOrderaddress(String orderaddress) {
		this.orderaddress = orderaddress;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	public String getPaymentno() {
		return paymentno;
	}
	public void setPaymentno(String paymentno) {
		this.paymentno = paymentno;
	}
	
	
	
	
}
