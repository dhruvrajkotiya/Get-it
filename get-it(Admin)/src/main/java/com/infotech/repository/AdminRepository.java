package com.infotech.repository;

import java.util.List;

import com.infotech.model.Admin;

public interface AdminRepository {
	void insert(Admin admin);

	void delete(Admin admin);

	Admin findById(int id);

	List<Admin> findAll();

	Admin findByEmail(String email);

	int countAdmin();

	List findNotificationAll();
}
