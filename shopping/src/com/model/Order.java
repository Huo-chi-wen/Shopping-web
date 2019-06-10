package com.model;






import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class Order {
	private int oid;
	private Double total;
	private Timestamp ordertime;
	private String orderItem;
	private String address;
	private String shipping;
	private String recipient;
	private String member;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(Double total, Timestamp ordertime, String orderItem, String address, String shipping, String recipient) {
		super();
		this.total = total;
		this.ordertime = ordertime;
		this.orderItem = orderItem;
		this.address = address;
		this.shipping = shipping;
		this.recipient = recipient;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Timestamp getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Timestamp timestamp) {
		this.ordertime = timestamp;
	}
	public String getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(String orderItem) {
		this.orderItem = orderItem;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getShipping() {
		return shipping;
	}
	public void setShipping(String shipping) {
		this.shipping = shipping;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	}
		
	
}
