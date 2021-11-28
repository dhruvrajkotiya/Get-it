package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "wishlist")
public class Wishlist {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "wish_id")
	private Integer wish_id;
	@Column
	private Integer item_id;
	private Integer cust_id;
	private Integer shop_id;

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

	public Integer getWish_id() {
		return wish_id;
	}

	public void setWish_id(Integer wish_id) {
		this.wish_id = wish_id;
	}

	public Integer getShop_id() {
		return shop_id;
	}

	public void setShop_id(Integer shop_id) {
		this.shop_id = shop_id;
	}

}
