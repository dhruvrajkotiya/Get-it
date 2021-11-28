package com.infotech.repository;

import java.util.List;

import com.infotech.model.Customer;

public interface CustomerRepository_admin {
	void insert(Customer customer);

	void delete(Customer customer);

	Customer findById(int id);

	List<Customer> findAll();

	Customer findByEmail(String email);

	int countCustomer();
}
