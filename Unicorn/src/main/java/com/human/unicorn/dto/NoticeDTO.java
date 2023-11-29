package com.human.unicorn.dto;

import java.sql.Date;

public class NoticeDTO {
	private String noticeNo;
	private String noticeTitle;
	private String noticeDetails;
	private Date noticeDate;
	
	int startNum;
	int endNum;
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
	public String getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeDetails() {
		return noticeDetails;
	}
	public void setNoticeDetails(String noticeDetails) {
		this.noticeDetails = noticeDetails;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	
	@Override
	public String toString() {
		return "NoticeDTO [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeDetails=" + noticeDetails
				+ ", noticeDate=" + noticeDate + "]";
	}
}
