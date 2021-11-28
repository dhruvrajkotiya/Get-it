package com.infotech.repository;

import java.util.List;

import com.infotech.model.Employee;

public interface EmployeeRepository {
	void insert(Employee employee);

	void delete(Employee employee);

	void editData(Employee employee);

	void changepassword(Employee employee);

	Employee findById(int id);

	Employee findByEmail(String email);

	List<Employee> findAll();

	int countEmployee();
}
