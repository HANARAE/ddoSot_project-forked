package com.marriage.matching;

public class Matching {

	private int matchNo;
	private String menNum;
	private String womenNum;
	private int managerNum;
	
	public Matching() {}
	
	public Matching(int matchNo, String menNum, String womenNum, int managerNum) {
		super();
		this.matchNo = matchNo;
		this.menNum = menNum;
		this.womenNum = womenNum;
		this.managerNum = managerNum;
	}

	@Override
	public String toString() {
		return "매칭결과 [매칭번호=" + matchNo + ", 남자번호=" + menNum + ", 여자번호=" + womenNum + ", 매니저번호="
				+ managerNum + "]";
	}
	
	
	
}
