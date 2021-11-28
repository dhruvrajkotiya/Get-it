package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Shopkeeper;
import com.infotech.repository.ShopkeeperRepository_shopkeeper;
import com.infotech.service.ShopkeeperService_shopkeeper;

@Service
@Transactional
public class ShopkeeperServiceImp_shopkeeper implements ShopkeeperService_shopkeeper {

	@Autowired
	private ShopkeeperRepository_shopkeeper shopkeeperRepository_shopkeeper ;

	@Override
	public void insert(Item item) {
		// TODO Auto-generated method stub
		shopkeeperRepository_shopkeeper.insert(item);
		
	}

	@Override
	public void delete(Item item) {
		// TODO Auto-generated method stub
		shopkeeperRepository_shopkeeper.delete(item);
		
	}

	@Override
	public Item findById(int id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.findById(id);
	}

	@Override
	public int countItem() {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.countItem();
	}

	@Override
	public void update(Item item) {
		// TODO Auto-generated method stub
		shopkeeperRepository_shopkeeper.insert(item);
	}

	@Override
	public List<Item> findAll(int sk_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.findAll(sk_id);
	}

	@Override
	public List getOrderDetail(Integer shop_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.getOrderDetail(shop_id);
	}

	@Override
	public List getOrderItemList(String order_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.getOrderItemList(order_id);
	}

	@Override
	public List itm_detail(String order_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.itm_detail(order_id);
	}

	@Override
	public Master_order findById1(int id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.findById1(id);
	}

	@Override
	public void acceptOrder(Master_order mo) {
		// TODO Auto-generated method stub
		shopkeeperRepository_shopkeeper.acceptOrder(mo);
		
	}

	@Override
	public List getOrderHistoryDetail(Integer shop_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.getOrderHistoryDetail(shop_id);
	}

	@Override
	public Shopkeeper findByEmailIdShopkeeper(String email) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.findByEmailIdShopkeeper(email);
	}

	@Override
	public Shopkeeper findShopkeeperById(int sk_id) {
		// TODO Auto-generated method stub
		return shopkeeperRepository_shopkeeper.findShopkeeperById(sk_id);
	}

	

}
