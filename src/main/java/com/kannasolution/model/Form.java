package com.kannasolution.model;

public class Form {
	private String fname;
	private String sname;
	private String mobileno;
	private String email;
	private String expectedLoanAmount;
	private String loanName;
	;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getExpectedLoanAmount() {
		return expectedLoanAmount;
	}
	public void setExpectedLoanAmount(String expectedLoanAmount) {
		this.expectedLoanAmount = expectedLoanAmount;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	@Override
	public String toString() {
		return "Form [fname=" + fname + ", sname=" + sname + ", mobileno=" + mobileno + ", email=" + email
				+ ", expectedLoanAmount=" + expectedLoanAmount + ", loanName=" + loanName + "]";
	}
	
	
	
}
