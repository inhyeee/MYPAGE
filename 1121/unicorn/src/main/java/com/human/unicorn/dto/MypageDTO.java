package com.human.unicorn.dto;

public class MypageDTO {

	private String name;
	private int userno;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	@Override
	public String toString() {
		return "MypageDTO [name=" + name + ", userno=" + userno + "]";
	}

	
	
}
