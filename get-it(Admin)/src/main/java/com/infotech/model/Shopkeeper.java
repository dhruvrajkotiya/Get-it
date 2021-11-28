package com.infotech.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shopkeeper")
public class Shopkeeper {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="sk_id")
	private Integer sk_id;
	@Column
	private String name;
	private String address;
	private String email;
	private String password;
	private String contact;
	@Column(name="shopkeeperstatus",insertable = false, columnDefinition="varchar(10) default 'A'")
	private String shopkeeperstatus;
	private Date join_date;

	
	public String getName() {
		return name;
	}
	public String getShopkeeperstatus() {
		return shopkeeperstatus;
	}
	public void setShopkeeperstatus(String shopkeeperstatus) {
		this.shopkeeperstatus = shopkeeperstatus;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Integer getSk_id() {
		return sk_id;
	}
	public void setSk_id(Integer sk_id) {
		this.sk_id = sk_id;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
}
