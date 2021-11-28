package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Shop;
import com.infotech.repository.ShopRepository;

@Repository
public class ShopRepositoryimp implements ShopRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Shop findById(int id) {
		// TODO Auto-generated method stub
		return (Shop) sessionFactory.getCurrentSession().get(Shop.class, id);
	}

	@Override
	public Shop findByRegistrationNumber(String registrationnumber) {
		// TODO Auto-generated method stub
		return (Shop) sessionFactory.getCurrentSession()
				.createQuery("From shop where registrationnumber='" + registrationnumber + "'").uniqueResult();
	}

	@Override
	public List<Shop> findAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createCriteria(Shop.class).list();
	}

	@Override
	public int countShop() {
		// TODO Auto-generated method stub
		return ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Shop").uniqueResult())
				.intValue();
	}

	@Override
	public void insert(Shop shop) {
		// TODO Auto-generated method stub
		
		sessionFactory.getCurrentSession().saveOrUpdate(shop);                      
		
	}

	@Override
	public void delete(Shop shop) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(shop);
		
	}

}
