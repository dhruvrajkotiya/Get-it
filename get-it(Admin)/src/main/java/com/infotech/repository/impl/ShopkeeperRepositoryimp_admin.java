package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Shopkeeper;
import com.infotech.repository.ShopkeeperRepository_admin;

@Repository
public class ShopkeeperRepositoryimp_admin implements ShopkeeperRepository_admin {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int insert(Shopkeeper shopkeeper) {
		sessionFactory.getCurrentSession().saveOrUpdate(shopkeeper);
		return shopkeeper.getSk_id();
	}

	@Override
	public void delete(Shopkeeper shopkeeper) {
		sessionFactory.getCurrentSession().delete(shopkeeper);
	}

	@Override
	public void editData(Shopkeeper shopkeeper) {
		sessionFactory.getCurrentSession().saveOrUpdate(shopkeeper);

	}

	@Override
	public void changepassword(Shopkeeper shopkeeper) {
		sessionFactory.getCurrentSession().saveOrUpdate(shopkeeper);
	}

	@Override
	public Shopkeeper findById(int id) {
		return (Shopkeeper) sessionFactory.getCurrentSession().get(Shopkeeper.class, id);
	}

	@Override
	public Shopkeeper findByEmail(String email) {
		// TODO Auto-generated method stub
		return (Shopkeeper) sessionFactory.getCurrentSession()
				.createQuery("From Shopkeeper where email='" + email + "'").uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Shopkeeper> findAll() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT sk.sk_id, sk.name, sk.email, sk.password, sk.address, sk.contact, sk.shopkeeperstatus, sk.join_date,sp.shop_id,sp.registrationnumber,sp.shopname,sp.shopaddress,sp.shopcontact FROM shopkeeper sk INNER JOIN shop sp ON sk.sk_id = sp.sk_id WHERE sk.shopkeeperstatus='ACTIVEBYADMIN'");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Shopkeeper> results = query.list();
		return results;
	}

	@Override
	public int countShopkeeper() {
		return ((Long) sessionFactory.getCurrentSession()
				.createQuery("select count(*) from Shopkeeper where shopkeeperstatus='A'").uniqueResult()).intValue();
	}

}
