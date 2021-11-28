package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Delivery;
import com.infotech.model.Employee;
import com.infotech.model.Master_order;
import com.infotech.repository.EmployeeRepository_employee;

@Repository
public class EmployeeRepositoryimp_employee implements EmployeeRepository_employee {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List findOrder() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT mo.id,mo.order_id,mo.delivery_address,mo.status,mo.total_amount,cu.name,cu.contact,sh.shopname,sh.shopaddress,sh.shopcontact FROM master_order mo INNER JOIN customer cu ON mo.cust_id = cu.cust_id INNER JOIN shop sh ON mo.shop_id = sh.shop_id WHERE status ='SAO'");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();

		return results;
	}

	@Override
	public void changeStatusMasterOrder(Master_order mo) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(mo);
	}

	@Override
	public void insertIntoDelivery(Delivery delivery) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(delivery);
	}

	@Override
	public Master_order findById(int moId) {
		// TODO Auto-generated method stub
		return (Master_order) sessionFactory.getCurrentSession().get(Master_order.class, moId);
	}

	@Override
	public List findMyOrder(int emp_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT mo.id,mo.order_id,mo.delivery_address,mo.status,mo.total_amount,cu.name,cu.contact,sh.shopname,sh.shopaddress,sh.shopcontact,del.id AS del_id FROM master_order mo INNER JOIN customer cu ON mo.cust_id = cu.cust_id INNER JOIN shop sh ON mo.shop_id = sh.shop_id INNER JOIN delivery del ON del.order_id = mo.order_id WHERE ((mo.status ='EAO') AND (del.status='ERS' OR del.status='EAO' OR del.status='EPO')) AND emp_id="
						+ emp_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public Delivery findDeliveryById(int id) {
		// TODO Auto-generated method stub
		return (Delivery) sessionFactory.getCurrentSession().get(Delivery.class, id);
	}

	@Override
	public void deleteDelivery(Delivery del) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(del);
	}

	@Override
	public List findDeliveredOrderHistory(int emp_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT mo.id,mo.order_id,mo.delivery_address,mo.total_amount,cu.name,cu.contact,sh.shopname,sh.shopaddress,sh.shopcontact,del.id AS del_id ,del.status FROM master_order mo INNER JOIN customer cu ON mo.cust_id = cu.cust_id INNER JOIN shop sh ON mo.shop_id = sh.shop_id INNER JOIN delivery del ON del.order_id = mo.order_id WHERE del.status ='EDO' AND emp_id="
						+ emp_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public Employee findByEmailIdEmployee(String email) {
		// TODO Auto-generated method stub
		return (Employee) sessionFactory.getCurrentSession().createQuery("From Employee where email='" + email + "'")
				.uniqueResult();
	}
}
