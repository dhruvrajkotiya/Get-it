package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Delivery;
import com.infotech.model.Employee;
import com.infotech.model.Master_order;
import com.infotech.repository.EmployeeRepository_employee;
import com.infotech.service.EmployeeService_employee;

@Service
@Transactional
public class EmployeeServiceimp_employee implements EmployeeService_employee {
	@Autowired
	private EmployeeRepository_employee employeeRepository_employee;

	@Override
	public List findOrder() {
		// TODO Auto-generated method stub
		return employeeRepository_employee.findOrder();
	}

	@Override
	public void changeStatusMasterOrder(Master_order mo) {
		// TODO Auto-generated method stub
		employeeRepository_employee.changeStatusMasterOrder(mo);
	}

	@Override
	public void insertIntoDelivery(Delivery delivery) {
		// TODO Auto-generated method stub
		employeeRepository_employee.insertIntoDelivery(delivery);
	}

	@Override
	public Master_order findById(int moId) {
		// TODO Auto-generated method stub
		return employeeRepository_employee.findById(moId);
	}

	@Override
	public List findMyOrder(int emp_id) {
		// TODO Auto-generated method stub
		return  employeeRepository_employee.findMyOrder(emp_id);
	}

	@Override
	public Delivery findDeliveryById(int id) {
		// TODO Auto-generated method stub
		return employeeRepository_employee.findDeliveryById(id);
	}

	@Override
	public void deleteDelivery(Delivery del) {
		// TODO Auto-generated method stub
		employeeRepository_employee.deleteDelivery(del);
	}

	@Override
	public List findDeliveredOrderHistory(int emp_id) {
		// TODO Auto-generated method stub
		return employeeRepository_employee.findDeliveredOrderHistory(emp_id);
	}

	@Override
	public Employee findByEmailIdEmployee(String email) {
		// TODO Auto-generated method stub
		return employeeRepository_employee.findByEmailIdEmployee(email);
	}


}
