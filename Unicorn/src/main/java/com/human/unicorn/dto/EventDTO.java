package com.human.unicorn.dto;

import java.sql.Date;

public class EventDTO {
	private String eventNo;
	private String eventTitle;
	private String eventDetails;
	private Date eventStart;
	private Date eventEnd;
	private String eventMainImg;
	
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
	public String getEventMainImg() {
		return eventMainImg;
	}
	public void setEventMainImg(String eventMainImg) {
		this.eventMainImg = eventMainImg;
	}
	public String getEventNo() {
		return eventNo;
	}
	public void setEventNo(String eventNo) {
		this.eventNo = eventNo;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public String getEventDetails() {
		return eventDetails;
	}
	public void setEventDetails(String eventDetails) {
		this.eventDetails = eventDetails;
	}
	public Date getEventStart() {
		return eventStart;
	}
	public void setEventStart(Date eventStart) {
		this.eventStart = eventStart;
	}
	public Date getEventEnd() {
		return eventEnd;
	}
	public void setEventEnd(Date eventEnd) {
		this.eventEnd = eventEnd;
	}
	@Override
	public String toString() {
		return "EventDTO [eventNo=" + eventNo + ", eventTitle=" + eventTitle + ", eventDetails=" + eventDetails
				+ ", eventStart=" + eventStart + ", eventEnd=" + eventEnd + "]";
	}
	
	
}
