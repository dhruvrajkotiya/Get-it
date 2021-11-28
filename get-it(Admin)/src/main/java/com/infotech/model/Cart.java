package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cart_id")
	private Integer cart_id;
	@Column
	private Integer item_id;
	private Integer cust_id;
	private Integer quantity;
	private Integer shop_id;
	
	public Integer getCart_id() {
		return cart_id;
	}

	public void setCart_id(Integer cart_id) {
		this.cart_id = cart_id;
	}

	public Integer getItem_id() {
		return item_id;
	}

	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}

	public Integer getCust_id() {
		return cust_id;
	}

	public void setCust_id(Integer cust_id) {
		this.cust_id = cust_id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getShop_id() {
		return shop_id;
	}

	public void setShop_id(Integer shop_id) {
		this.shop_id = shop_id;
	}
	

}
