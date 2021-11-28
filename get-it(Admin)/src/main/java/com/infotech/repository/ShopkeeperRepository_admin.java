package com.infotech.repository;

import java.util.List;

import com.infotech.model.Shopkeeper;

public interface ShopkeeperRepository_admin {
	int insert(Shopkeeper shopkeeper);

	void delete(Shopkeeper shopkeeper);

	void editData(Shopkeeper shopkeeper);

	void changepassword(Shopkeeper shopkeeper);

	Shopkeeper findById(int id);

	Shopkeeper findByEmail(String email);

	List<Shopkeeper> findAll();

	int countShopkeeper();
}
