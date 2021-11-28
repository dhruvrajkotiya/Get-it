package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Admin;
import com.infotech.repository.AdminRepository;
import com.infotech.service.AdminService;

@Service
@Transactional
public class AdminServiceImp implements AdminService {

	@Autowired
	private AdminRepository adminRepository;

	@Override
	public void insert(Admin admin) {
		adminRepository.insert(admin);

	}

	@Override
	public void delete(Admin admin) {
		adminRepository.delete(admin);

	}

	@Override
	public Admin findById(int id) {
		return adminRepository.findById(id);
	}

	@Override
	public List<Admin> findAll() {
		return adminRepository.findAll();
	}

	@Override
	public Admin findByEmail(String email) {
		return adminRepository.findByEmail(email);
	}
	public void update(Admin admin) {
		adminRepository.insert(admin);

	}

	@Override
	public int countAdmin() {		
		return adminRepository.countAdmin();
	}

	@Override
	public List findNotificationAll() {
		// TODO Auto-generated method stub
		return adminRepository.findNotificationAll();
	}


}
