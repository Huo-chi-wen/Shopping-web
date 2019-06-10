package com.action;

import org.apache.struts2.ServletActionContext;

import com.dao.productDAO;
import com.model.Product;
import com.opensymphony.xwork2.ActionSupport;


public class productAction extends ActionSupport {
	
	private Product p;
	
	public String find() {
		
		Product product=productDAO.find(p.getId());
		
		ServletActionContext.getRequest().getSession().setAttribute("PRODUCT", product);
		
		return SUCCESS;
	}
	
	public String add() {
		productDAO.add(p);
		
		
		return SUCCESS;
	}

	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}


}
