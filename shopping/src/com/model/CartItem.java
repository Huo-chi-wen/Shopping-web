package com.model;

public class CartItem {
	private Product product;
	private int qty=1;
	private double subtotal;
	

	public double getSubtotal() {
		subtotal=product.getPrice()*qty;
		return subtotal;
	}
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
	
	
	
	
}
