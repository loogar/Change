package com.mvc.bean;

public class RequestforexchangeBean {
	
	String RequestedFrom;
	String Requestedto;
	String noofperson;
	String fromdate;
	String todate;
	
	
	
	public String getRequestedFrom() {
		return RequestedFrom;
	}
	public void setRequestedFrom(String requestedFrom) {
		RequestedFrom = requestedFrom;
	}
	public String getRequestedto() {
		return Requestedto;
	}
	public void setRequestedto(String requestedto) {
		Requestedto = requestedto;
	}
	
	public String getNoofperson() {
		return noofperson;
	}
	public void setNoofperson(String noofperson) {
		this.noofperson = noofperson;
	}
	
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	
	

}
