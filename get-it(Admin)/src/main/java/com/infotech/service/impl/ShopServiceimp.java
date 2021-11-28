package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Shop;
import com.infotech.repository.ShopRepository;
import com.infotech.service.ShopService;


@Service
@Transactional
public class ShopServiceimp implements ShopService {
	@Autowired
	private ShopRepository shopRepository;

	@Override
	public void insert(Shop shop) {
		// TODO Auto-generated method stub
		shopRepository.insert(shop);
		
	}

	@Override
	public Shop findById(int id) {
		// TODO Auto-generated method stub
		
		return shopRepository.findById(id);
	}

	@Override
	public Shop findByRegistrationNumber(String registrationnumber) {
		// TODO Auto-generated method stub
		return shopRepository.findByRegistrationNumber(registrationnumber);
	}

	@Override
	public List<Shop> findAll() {
		// TODO Auto-generated method stub
		return shopRepository.findAll();
	}

	@Override
	public int countShop() {
		// TODO Auto-generated method stub
		return shopRepository.countShop();
	}

	@Override
	public void delete(Shop shop) {
		// TODO Auto-generated method stub
		shopRepository.delete(shop);
		
	}

	

}
