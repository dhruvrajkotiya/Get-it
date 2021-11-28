package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.infotech.model.Admin;
import com.infotech.model.Shopkeeper;
import com.infotech.repository.AdminRepository;

@Repository
public class AdminRepositoryImp implements AdminRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(Admin admin) {
		sessionFactory.getCurrentSession().saveOrUpdate(admin);

	}

	@Override
	public void delete(Admin admin) {
		sessionFactory.getCurrentSession().delete(admin);

	}

	@Override
	public Admin findById(int id) {
		return (Admin) sessionFactory.getCurrentSession().get(Admin.class, id);
	}

	@Override
	public List<Admin> findAll() {
		return sessionFactory.getCurrentSession().createCriteria(Admin.class).list();
	}

	@Override
	public Admin findByEmail(String email) {
		return (Admin) sessionFactory.getCurrentSession().createQuery("From Admin where email='" + email + "'")
				.uniqueResult();
	}

	@Override
	public int countAdmin() {
		return  ((Long)sessionFactory.getCurrentSession().createQuery("select count(*) from Admin").uniqueResult()).intValue();
	}

	@Override
	public List findNotificationAll() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT sk.sk_id, sk.name, sk.email, sk.password, sk.address, sk.contact, sk.shopkeeperstatus, sk.join_date,sp.shop_id,sp.registrationnumber,sp.shopname,sp.shopaddress,sp.shopcontact FROM shopkeeper sk INNER JOIN shop sp ON sk.sk_id = sp.sk_id WHERE sk.shopkeeperstatus='ACTIVE'");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Shopkeeper> results = query.list();
		return results;
	}
	
	

}
