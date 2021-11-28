package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Shopkeeper;
import com.infotech.repository.ShopkeeperRepository_admin;
import com.infotech.service.ShopkeeperService_admin;

@Service
@Transactional
public class ShopkeeperServiceimp_admin implements ShopkeeperService_admin {
	@Autowired
	private ShopkeeperRepository_admin shopkeeperRepository_admin;

	@Override
	public int insert(Shopkeeper shopkeeper) {
		shopkeeperRepository_admin.insert(shopkeeper);
	    return shopkeeper.getSk_id();
	}

	@Override
	public void delete(Shopkeeper shopkeeper) {
		shopkeeperRepository_admin.delete(shopkeeper);

	}

	@Override
	public void editData(Shopkeeper shopkeeper) {
		shopkeeperRepository_admin.editData(shopkeeper);
	}

	@Override
	public void changepassword(Shopkeeper shopkeeper) {
		shopkeeperRepository_admin.changepassword(shopkeeper);
	}

	@Override
	public Shopkeeper findById(int id) {
		return shopkeeperRepository_admin.findById(id);
	}

	@Override
	public Shopkeeper findByEmail(String email) {
		return shopkeeperRepository_admin.findByEmail(email);
	}

	@Override
	public List<Shopkeeper> findAll() {
		return shopkeeperRepository_admin.findAll();
	}

	@Override
	public void update(Shopkeeper obj) {
		// TODO Auto-generated method stub
		shopkeeperRepository_admin.insert(obj);
		
	}

	@Override
	public int countShopkeeper() {
		// TODO Auto-generated method stub
		return shopkeeperRepository_admin.countShopkeeper();
	}

}
