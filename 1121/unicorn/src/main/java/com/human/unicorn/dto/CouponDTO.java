package com.human.unicorn.dto;

import java.sql.Date;

public class CouponDTO {
	
	private String couponno;
	private int coupondc;
	private int userno;
	private String serialno;
	private Date validdate;
	
	// ∆‰¿Ã¬°
	private int startNum;
	private int endNum;
	
	public String getCouponno() {
		return couponno;
	}
	public void setCouponno(String couponno) {
		this.couponno = couponno;
	}
	public int getCoupondc() {
		return coupondc;
	}
	public void setCoupondc(int coupondc) {
		this.coupondc = coupondc;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getSerialno() {
		return serialno;
	}
	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}
	public Date getValiddate() {
		return validdate;
	}
	public void setValiddate(Date validdate) {
		this.validdate = validdate;
	}
	@Override
	public String toString() {
		return "CouponDTO [couponno=" + couponno + ", coupondc=" + coupondc + ", userno=" + userno + ", serialno="
				+ serialno + ", validdate=" + validdate + "]";
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
