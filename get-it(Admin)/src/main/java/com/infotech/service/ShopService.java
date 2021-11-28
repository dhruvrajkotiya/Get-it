package com.infotech.service;

import java.util.List;

import com.infotech.model.Shop;

public interface ShopService {
	void insert(Shop shop);

	Shop findById(int id);

	Shop findByRegistrationNumber(String registrationnumber);

	List<Shop> findAll();

	int countShop();
	
	void delete(Shop shop);
}
