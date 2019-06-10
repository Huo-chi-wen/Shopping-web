package com.action;

import org.apache.struts2.ServletActionContext;

import com.model.Cart;
import com.model.CartItem;
import com.model.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class cartAction extends ActionSupport{
	
	private Product p=(Product) ServletActionContext.getRequest().getSession().getAttribute("PRODUCT");
	private int pid;
	CartItem item=new CartItem();
	
	
	public String execute() {
		
		item.setProduct(p);
		Cart cart=getCart();
		cart.addCartItem(item);
		System.out.println(cart.getCartItem());
		return SUCCESS;
	}

	private Cart getCart() {
		Cart cart =(Cart)ServletActionContext.getRequest().getSession().getAttribute("CART");
		if(cart==null) {
			cart=new Cart();
			ServletActionContext.getRequest().getSession().setAttribute("CART", cart);
			
		}
		return cart;
	}
	
	public String clearCart() {
		
		Cart cart= getCart();
		
		cart.clearCart();
		
		return "clearCart";
	}
	
	public String removeCart() {
		
		Cart cart=getCart();
		System.out.println(pid);
		cart.removeCart(pid);
		
		//how to get product ID inside collection
		return "remove";
		
	}
	

	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}

	public CartItem getItem() {
		return item;
	}

	public void setItem(CartItem item) {
		this.item = item;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	
	
	
	
	

}
