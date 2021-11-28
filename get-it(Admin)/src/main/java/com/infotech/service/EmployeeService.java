package com.infotech.service;

import java.util.List;

import com.infotech.model.Employee;

public interface EmployeeService {
	void insert(Employee employee);

	void delete(Employee employee);

	void editData(Employee employee);

	void changepassword(Employee employee);

	Employee findById(int id);

	Employee findByEmail(String email);

	List<Employee> findAll();

	void update(Employee obj);
	
	int countEmployee();
}
