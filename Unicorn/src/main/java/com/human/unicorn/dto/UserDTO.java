package com.human.unicorn.dto;

import java.sql.Date;

public class UserDTO {

	private int userno;
	private String id;
	private String pw;
	private String name;
	private String address;
	private String addressdetails;
	private int postcode;
	private String tel;
	private String email;
	private int userpoint;
	private int grade;
	private Date signupdate;
	
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
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
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date signupdate) {
		this.signupdate = signupdate;
	}
	
	@Override
	public String toString() {
		return "UserDTO [userno=" + userno + ", id=" + id + ", pw=" + pw + ", name=" + name + ", address=" + address
				+ ", addressdetails=" + addressdetails + ", postcode=" + postcode + ", tel=" + tel + ", email=" + email
				+ ", userpoint=" + userpoint + ", grade=" + grade + ", signupdate=" + signupdate + "]";
	}
}
