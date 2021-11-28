package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Customer;
import com.infotech.repository.CustomerRepository_admin;

@Repository
public class CustomerRepositoryImp_admin implements CustomerRepository_admin {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);

	}

	@Override
	public void delete(Customer customer) {
		sessionFactory.getCurrentSession().delete(customer);

	}

	@Override
	public Customer findById(int id) {
		return (Customer) sessionFactory.getCurrentSession().get(Customer.class, id);
	}

	@Override
	public List<Customer> findAll() {
		return sessionFactory.getCurrentSession().createCriteria(Customer.class).list();
	}

	@Override
	public Customer findByEmail(String email) {
		return (Customer) sessionFactory.getCurrentSession().createQuery("From Customer where email='" + email + "'")
				.uniqueResult();
	}
	
	@Override
	public int countCustomer() {
		return  ((Long)sessionFactory.getCurrentSession().createQuery("select count(*) from Customer").uniqueResult()).intValue();
	}

}
