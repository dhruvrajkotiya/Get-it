package com.infotech.service;

import java.util.List;

import com.infotech.model.Admin;

public interface AdminService {
	void insert(Admin admin);

	void delete(Admin admin);

	Admin findById(int id);

	List<Admin> findAll();

	Admin findByEmail(String email);

	int countAdmin();

	void update(Admin admin);

	List findNotificationAll();
}
