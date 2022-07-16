package com.ssafy.vue.dto;

public class InterestDto {

	private int interestno;
	private String userid;
	private String dongCode;
	private String dongName;
	private String sidoName;
	private String gugunName;
	
	public int getInterestno() {
		return interestno;
	}
	public void setInterestno(int interestno) {
		this.interestno = interestno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getDongCode() {
		return dongCode;
	}
	public void setDongCode(String dongCode) {
		this.dongCode = dongCode;
	}
	public String getDongName() {
		return dongName;
	}
	public void setDongName(String dongName) {
		this.dongName = dongName;
	}
	public String getSidoName() {
		return sidoName;
	}
	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}
	public String getGugunName() {
		return gugunName;
	}
	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}
	
	@Override
	public String toString() {
		return "InterestDto [interestno=" + interestno + ", userid=" + userid + ", dongCode=" + dongCode + ", dongName="
				+ dongName + ", sidoName=" + sidoName + ", gugunName=" + gugunName + "]";
	}
	
}
