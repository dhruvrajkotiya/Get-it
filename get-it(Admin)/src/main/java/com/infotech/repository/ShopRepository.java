package com.infotech.repository;

import java.util.List;

import com.infotech.model.Shop;

public interface ShopRepository {

	Shop findById(int id);

	Shop findByRegistrationNumber(String registrationnumber);

	List<Shop> findAll();

	int countShop();

	void insert(Shop shop);

	void delete(Shop shop);
}
