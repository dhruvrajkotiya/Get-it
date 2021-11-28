package com.infotech.service;

import java.util.List;

import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Shopkeeper;

public interface ShopkeeperService_shopkeeper {
	void insert(Item item);

	void delete(Item item);

	Item findById(int id);

	List<Item> findAll(int sk_id);

	int countItem();

	void update(Item item);

	List getOrderDetail(Integer shop_id);

	List getOrderItemList(String order_id);

	List itm_detail(String order_id);

	Master_order findById1(int parseInt);

	void acceptOrder(Master_order mo);

	List getOrderHistoryDetail(Integer shop_id);

	Shopkeeper findByEmailIdShopkeeper(String email);

	Shopkeeper findShopkeeperById(int sk_id);

}
