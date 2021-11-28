package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Customer;
import com.infotech.repository.CustomerRepository_admin;
import com.infotech.service.CustomerService_admin;

@Service
@Transactional
public class CustommerServiceImp_admin implements CustomerService_admin {

	@Autowired
	private CustomerRepository_admin customerRepository_admin;

	@Override
	public void insert(Customer customer) {
		customerRepository_admin.insert(customer);

	}

	@Override
	public void delete(Customer customer) {
		customerRepository_admin.delete(customer);

	}

	@Override
	public Customer findById(int id) {
		return customerRepository_admin.findById(id);
	}

	@Override
	public List<Customer> findAll() {
		return customerRepository_admin.findAll();
	}

	@Override
	public Customer findByEmail(String email) {
		return customerRepository_admin.findByEmail(email);
	}

	@Override
	public void update(Customer obj) {
		// TODO Auto-generated method stub
		customerRepository_admin.insert(obj);
		
	}

	@Override
	public Object countCustomer() {
		// TODO Auto-generated method stub
		return customerRepository_admin.countCustomer();
	}

}
