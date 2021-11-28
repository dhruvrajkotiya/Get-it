package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Shopkeeper;
import com.infotech.repository.ShopkeeperRepository_shopkeeper;

@Repository
public class ShopkeeperRepositoryImp_shopkeeper implements ShopkeeperRepository_shopkeeper {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(Item item) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(item);
	}

	@Override
	public void delete(Item item) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(item);
	}

	@Override
	public Item findById(int id) {
		// TODO Auto-generated method stub
		return (Item) sessionFactory.getCurrentSession().get(Item.class, id);
	}

	@Override
	public int countItem() {
		// TODO Auto-generated method stub
		return ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Item").uniqueResult())
				.intValue();
	}

	@Override
	public void update(Item item) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Item> findAll(int sk_id) {
		// TODO Auto-generated method stub
		return (List<Item>) sessionFactory.getCurrentSession().createQuery("From Item where sk_id =" + sk_id).list();
	}

	@Override
	public List getOrderDetail(Integer shop_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT id,cust_id,order_id,shop_id,delivery_address,total_amount,status FROM master_order WHERE status='1' AND shop_id ="
						+ shop_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();

		return results;
	}

	@Override
	public List getOrderItemList(String order_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT odr.order_id,odr.quantity,odr.item_id,itm.name,itm.brand,itm.price,itm.offerprice, itm.image FROM tblorder odr INNER JOIN item itm ON odr.item_id=itm.item_id WHERE odr.order_id ="
						+ order_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public List itm_detail(String order_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT id, order_id, cust_id, shop_id,delivery_address,status,total_amount FROM master_order WHERE order_id ="
						+ order_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public Master_order findById1(int id) {
		// TODO Auto-generated method stub
		return (Master_order) sessionFactory.getCurrentSession().get(Master_order.class, id);
	}

	@Override
	public void acceptOrder(Master_order mo) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(mo);

	}

	@Override
	public List getOrderHistoryDetail(Integer shop_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT id,cust_id,order_id,shop_id,delivery_address,total_amount,status FROM master_order WHERE ((status='SAO' OR status='SRO') OR status='EAO') AND shop_id ="
						+ shop_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public Shopkeeper findByEmailIdShopkeeper(String email) {
		// TODO Auto-generated method stub
		return (Shopkeeper) sessionFactory.getCurrentSession().createQuery("From Shopkeeper where email='" + email + "'")
				.uniqueResult();
	}

	@Override
	public Shopkeeper findShopkeeperById(int sk_id) {
		// TODO Auto-generated method stub
		return (Shopkeeper) sessionFactory.getCurrentSession().createQuery("From Shopkeeper where sk_id="+sk_id +"")
				.uniqueResult();
	}

}
