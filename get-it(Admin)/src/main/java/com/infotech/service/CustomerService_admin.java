package com.infotech.service;

import java.util.List;

import com.infotech.model.Customer;

public interface CustomerService_admin {
	void insert(Customer customer);

	void delete(Customer customer);

	Customer findById(int id);

	List<Customer> findAll();

	Customer findByEmail(String email);

	void update(Customer obj);

	Object countCustomer();
}
