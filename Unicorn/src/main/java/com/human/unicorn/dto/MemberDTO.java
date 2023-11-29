package com.human.unicorn.dto;

import java.sql.Date;

public class MemberDTO {
	
	private int userno;
	private String name;
	private String id;
	private String pw;
	private String email;
	private String tel;
	private String address;
	private String addressdetails;
	private String postcode;
	private int userpoint;
	private int grade;
	private Date signupdate;
	private int startNum;
	private int endNum;
	
	
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	@Override
	public String toString() {
		return "MemberDTO [userno=" + userno + ", name=" + name + ", id=" + id + ", pw=" + pw + ", email=" + email
				+ ", tel=" + tel + ", address=" + address + ", addressdetails=" + addressdetails + ", postcode="
				+ postcode + ", userpoint=" + userpoint + ", grade=" + grade + ", signupdate=" + signupdate
				+ ", startNum=" + startNum + ", endNum=" + endNum + "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	public int getuserpoint() {
		return userpoint;
	}
	public void setuserpoint(int point) {
		this.userpoint = point;
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
	public void setStartNum(int startNum) {
		this.startNum = startNum;
		
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
		
	}
	public int getStartNum() {
        // 해당 프로퍼티의 값을 리턴하는 코드 작성
        return startNum;
    }

    public int getEndNum() {
        // 해당 프로퍼티의 값을 리턴하는 코드 작성
        return endNum;
    }
	
}