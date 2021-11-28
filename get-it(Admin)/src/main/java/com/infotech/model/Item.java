package com.infotech.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "item")
public class Item {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "item_id")
	private Integer item_id;
	@Column
	private String name;
	private String brand;
	private String price;
	private String sk_id;
	private String description;
	private String image;
	private String itemtype;
	private String offerprice;
	private Date itemdate;
	private String availability;
	
	
	public String getItemtype() {
		return itemtype;
	}

	public void setItemtype(String itemtype) {
		this.itemtype = itemtype;
	}

	public String getOfferprice() {
		return offerprice;
	}

	public void setOfferprice(String offerprice) {
		this.offerprice = offerprice;
	}

	public Date getItemdate() {
		return itemdate;
	}

	public void setItemdate(Date itemdate) {
		this.itemdate = itemdate;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public Integer getItem_id() {
		return item_id;
	}

	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String string) {
		this.image = string;
	}

	public String getSk_id() {
		return sk_id;
	}

	public void setSk_id(String sk_id) {
		this.sk_id = sk_id;
	}

}
