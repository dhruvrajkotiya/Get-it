package com.infotech.service;

import java.util.List;

import com.infotech.model.Delivery;
import com.infotech.model.Employee;
import com.infotech.model.Master_order;

public interface EmployeeService_employee {

	List findOrder();

	void changeStatusMasterOrder(Master_order mo);

	void insertIntoDelivery(Delivery delivery);

	Master_order findById(int moId);

	List findMyOrder(int emp_id);

	Delivery findDeliveryById(int parseInt);

	void deleteDelivery(Delivery del);

	List findDeliveredOrderHistory(int emp_id);

	Employee findByEmailIdEmployee(String email);
	
}
