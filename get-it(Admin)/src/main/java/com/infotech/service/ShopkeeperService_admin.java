package com.infotech.service;

import java.util.List;

import com.infotech.model.Shopkeeper;

public interface ShopkeeperService_admin {
	int insert(Shopkeeper employee);

	void delete(Shopkeeper employee);

	void editData(Shopkeeper employee);

	void changepassword(Shopkeeper employee);

//	Shopkeeper findById(Shopkeeper shopkeeper);

	Shopkeeper findByEmail(String email);

	List<Shopkeeper> findAll();

	void update(Shopkeeper obj);
	
	int countShopkeeper();

	Shopkeeper findById(int id);

}
