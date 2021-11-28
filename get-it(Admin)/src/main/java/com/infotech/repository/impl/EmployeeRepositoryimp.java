package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Employee;
import com.infotech.repository.EmployeeRepository;

@Repository
public class EmployeeRepositoryimp implements EmployeeRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
	}

	@Override
	public void delete(Employee employee) {
		sessionFactory.getCurrentSession().delete(employee);
	}

	@Override
	public void editData(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);

	}

	@Override
	public void changepassword(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
	}

	@Override
	public Employee findById(int id) {
		return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
	}

	@Override
	public Employee findByEmail(String email) {
		// TODO Auto-generated method stub
		return (Employee) sessionFactory.getCurrentSession().createQuery("From Employee where email='" + email + "'")
				.uniqueResult();
	}

	@Override
	public List<Employee> findAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createCriteria(Employee.class).list();
	}
	
	@Override
	public int countEmployee() {
		return  ((Long)sessionFactory.getCurrentSession().createQuery("select count(*) from Employee").uniqueResult()).intValue();
	}

}
