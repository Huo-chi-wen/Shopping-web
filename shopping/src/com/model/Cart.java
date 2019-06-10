package com.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

public class Cart {
	
	
	private Map<Integer,CartItem> map=new LinkedHashMap<Integer,CartItem>();
	
	public Collection<CartItem> getCartItem(){
		return map.values();
	}
	//Cart order item
	private double total;
	//must have getter or jsp property cannot catch total's value
	public double getTotal() {
		return total;
	}

	/**
	 * 
	 * @param item
	 */
	public void addCartItem(CartItem item) {
		
		Integer id = item.getProduct().getId();
		
		if(map.containsKey(id)) {
			
			CartItem _item = map.get(id);
			_item.setQty(item.getQty()+_item.getQty());
		}else {
			map.put(id, item);
		}
		total+=item.getSubtotal();
	
	}
	
	public void removeCart(Integer id) {
				
		CartItem item = map.remove(id);
		
		total-= item.getSubtotal();		
		
	}
	
	public void clearCart() {
		
		map.clear();
		
		total=0;
		
	}
	
	public static void main(String[] args) {
		Cart cart =(Cart)ServletActionContext.getRequest().getSession().getAttribute("CART");
		System.out.println(cart);
	}
}
