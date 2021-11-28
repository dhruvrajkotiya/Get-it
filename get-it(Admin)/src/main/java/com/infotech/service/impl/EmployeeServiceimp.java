package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Employee;
import com.infotech.repository.EmployeeRepository;
import com.infotech.service.EmployeeService;

@Service
@Transactional
public class EmployeeServiceimp implements EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public void insert(Employee employee) {
		employeeRepository.insert(employee);
	}

	@Override
	public void delete(Employee employee) {
		employeeRepository.delete(employee);

	}

	@Override
	public void editData(Employee employee) {
		employeeRepository.editData(employee);
	}

	@Override
	public void changepassword(Employee employee) {
		employeeRepository.changepassword(employee);
	}

	@Override
	public Employee findById(int id) {
		return employeeRepository.findById(id);
	}

	@Override
	public Employee findByEmail(String email) {
		return employeeRepository.findByEmail(email);
	}

	@Override
	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	@Override
	public void update(Employee obj) {
		// TODO Auto-generated method stub
		employeeRepository.insert(obj);
		
	}

	@Override
	public int countEmployee() {
		// TODO Auto-generated method stub
		return employeeRepository.countEmployee();
	}

}
