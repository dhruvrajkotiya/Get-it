package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shop")
public class Shop {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="shop_id")
	private Integer shop_id;
	
	@Column
	private Integer sk_id;
	private String registrationnumber;
	private String shopname;
	private String shopaddress;
	private String shopcontact;
//	@Column(name="shopstatus",columnDefinition="varchar(10) default 'A'")
//	private String shopstatus;
	
	public Integer getSk_id() {
		return sk_id;
	}
	public void setSk_id(Integer sk_id) {
		this.sk_id = sk_id;
	}
	public Integer getShop_id() {
		return shop_id;
	}
	public void setShop_id(Integer shop_id) {
		this.shop_id = shop_id;
	}
	public String getRegistrationnumber() {
		return registrationnumber;
	}
	public void setRegistrationnumber(String registrationnumber) {
		this.registrationnumber = registrationnumber;
	}
//	public String getShopstatus() {
//		return shopstatus;
//	}
//	public void setShopstatus(String shopstatus) {
//		this.shopstatus = shopstatus;
//	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getShopaddress() {
		return shopaddress;
	}
	public void setShopaddress(String shopaddress) {
		this.shopaddress = shopaddress;
	}
	public String getShopcontact() {
		return shopcontact;
	}
	public void setShopcontact(String shopcontact) {
		this.shopcontact = shopcontact;
	}
}
