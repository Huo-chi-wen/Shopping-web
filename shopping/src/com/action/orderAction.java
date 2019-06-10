package com.action;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.dao.orderDAO;
import com.model.Cart;
import com.model.Order;
import com.model.member;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class orderAction extends ActionSupport{
	private Order order=new Order();
	private Order o;
	
	Cart cart=(Cart) ServletActionContext.getRequest().getSession().getAttribute("CART");
	member member= (member) ActionContext.getContext().getSession().get("MEMBER");
	
	public String order(){
		Date date=new Date();
		
		
		
		order.setTotal(cart.getTotal());
		order.setOrdertime(new Timestamp(date.getTime()));
		order.setRecipient(o.getRecipient());
		order.setAddress(o.getAddress());
		order.setShipping(o.getShipping());
		order.setOrderItem(String.valueOf(cart.getCartItem().hashCode()).toString());
		order.setMember(member.getAccount());
		
		if(order.equals(null))
			return ERROR;
		
		orderDAO.add(order);
		ServletActionContext.getRequest().getSession().setAttribute("ORDER",order);
		return SUCCESS;
	}
	
	
	public String checkout() {
		
		if(cart==null) 
			cart=new Cart();
		
		if(cart.getCartItem().isEmpty()) 
			return ERROR;
		
		if(member==null)
			return "nullMember";			
		
		return SUCCESS;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Order getO() {
		return o;
	}

	public void setO(Order o) {
		this.o = o;
	}
	
	
}
