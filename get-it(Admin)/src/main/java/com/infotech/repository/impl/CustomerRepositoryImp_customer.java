package com.infotech.repository.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotech.model.Admin;
import com.infotech.model.Cart;
import com.infotech.model.Customer;
import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Wishlist;
import com.infotech.repository.CustomerRepository_customer;

@Repository
public class CustomerRepositoryImp_customer implements CustomerRepository_customer {
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Item> findAll() {
		// TODO Auto-generated method stub
		// return sessionFactory.getCurrentSession().createCriteria(Item.class).list();
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM item ORDER BY RAND()");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Item> results = query.list();

		return results;
	}

	@Override
	public Item findById(int id) {
		// TODO Auto-generated method stub
		return (Item) sessionFactory.getCurrentSession().get(Item.class, id);
	}

	@Override
	public List findBysk_Id(int id) {

		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT i.item_id, i.name, i.brand,i.price,i.image,i.description,i.availability,offerprice,i.itemtype,s.shop_id FROM item i INNER JOIN shop s on i.sk_id = s.sk_id where i.sk_id="
						+ id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public Customer findByEmail(String email) {
		return (Customer) sessionFactory.getCurrentSession().createQuery("From Customer where email='" + email + "'")
				.uniqueResult();
	}

	@Override
	public void addtocart(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	@Override
	public void addtowishlist(Wishlist wishlist) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(wishlist);

	}

	@Override
	public int cartItemCount(Integer cust_id) {
		// TODO Auto-generated method stub
		return ((Long) sessionFactory.getCurrentSession()
				.createQuery("select count(*) from Cart where cust_id=" + cust_id).uniqueResult()).intValue();
	}

	@Override
	public List<Cart> cartItemList(Integer cust_id) {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT crt.item_id,cart_id,itm.name,quantity,itm.image,itm.availability,itm.offerprice,itm.brand,cust_id FROM cart crt INNER JOIN item itm ON crt.item_id = itm.item_id where cust_id="
						+ cust_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Cart> results = query.list();

		return results;
	}

	@Override
	public Cart findById_cart(int cart_id) {
		// TODO Auto-generated method stub
		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, cart_id);
	}

	@Override
	public void deletecartitem(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(cart);

	}

	@Override
	public int findByshop_id(Integer cust_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int countDistinctItem(Integer cust_id) {
		// TODO Auto-generated method stub
		return ((Long) sessionFactory.getCurrentSession()
				.createQuery("select count(distinct shop_id) from Cart where cust_id=" + cust_id).uniqueResult())
						.intValue();
	}

	@Override
	public List findTotalAmount(Integer cust_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT SUM(itm.offerprice*crt.quantity) AS Total_Bill FROM cart crt INNER JOIN item itm ON crt.item_id = itm.item_id where crt.cust_id = "
						+ cust_id);
		List temp = query.list();
		return temp;
	}

	@Override
	public List findShop_idCart(Integer cust_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT shop_id FROM cart WHERE cust_id =" + cust_id);
		List temp = query.list();

		return temp;
	}

	@Override
	public int findMaxOrder_id() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery("SELECT MAX(order_id) FROM tblorder");
		if (query.list().get(0) == null) {
			return 1;
		} else {
			int order_id = (int) query.list().get(0) + 1;
			return order_id;
		}

	}

	@Override
	public void placeOrder(Master_order master_order, Integer cust_id) {
		// TODO Auto-generated method stub
		List<Cart> results = sessionFactory.getCurrentSession().createQuery("from Cart where cust_id=" + cust_id)
				.list();
		// sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM cart where
		// cust_id="+cust_id);
		for (Cart cart : results) { // Which you iterate
			Query orderTableQuery = sessionFactory.getCurrentSession()
					.createSQLQuery("INSERT INTO tblorder (order_id, quantity, item_id) VALUES ("
							+ master_order.getOrder_id() + ", " + cart.getQuantity() + ", " + cart.getItem_id() + ")");

			orderTableQuery.executeUpdate();

		}
		Query master_orderTableQuery = sessionFactory.getCurrentSession().createSQLQuery(
				"INSERT INTO master_order (order_id, cust_id , shop_id, delivery_address, status, total_amount) VALUES ("
						+ master_order.getOrder_id() + "," + master_order.getCust_id() + "," + master_order.getShop_id()
						+ ",'" + master_order.getDelivery_address() + "'," + master_order.getStatus() + ","
						+ master_order.getTotal_amount() + ")");
		Query deleteCartItem = sessionFactory.getCurrentSession()
				.createSQLQuery("DELETE FROM cart WHERE cust_id =" + master_order.getCust_id());
		master_orderTableQuery.executeUpdate();
		deleteCartItem.executeUpdate();
	}

	@Override
	public List getItemByGrocery() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Grocery' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List getItemByBreadAndDairy() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Bread and Dairy' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List getItemByFruits() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Fruits' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List getItemByBeverages() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Beverages' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List getItemBySweets() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Sweets' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List getItemByPackedSnack() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM item WHERE itemtype = 'Packed Snack' ");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		System.out.println(results);
		return results;
	}

	@Override
	public List<Wishlist> wishItemList(Integer cust_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT wish.wish_id, wish.item_id,itm.image,itm.name,itm.brand,itm.price,itm.offerprice,itm.availability FROM wishlist wish INNER JOIN item itm ON itm.item_id=wish.item_id WHERE wish.cust_id="
						+ cust_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Wishlist> results = query.list();
		return results;
	}

	@Override
	public Wishlist findById_wish(int wish_id) {
		// TODO Auto-generated method stub
		return (Wishlist) sessionFactory.getCurrentSession().get(Wishlist.class, wish_id);
	}

	@Override
	public void deletewishitem(Wishlist wishlist) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(wishlist);

	}

	@Override
	public List<Item> findAllLatest() {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT * FROM `item` ORDER BY item_id desc");
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public List findOrder_id(Integer cust_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession()
				.createSQLQuery("SELECT order_id FROM master_order WHERE cust_id =" + cust_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		return results;
	}

	@Override
	public List findOrderDetail(int order_id, int cust_id) {
		// TODO Auto-generated method stub
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT mo.order_id,mo.total_amount FROM master_order mo WHERE mo.order_id ="+order_id+" AND mo.cust_id ="+cust_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Item> results = query.list();
		return results;
	}

	@Override
	public List findOrderList(int order_id, int cust_id) {
		// TODO Auto-generated method stub
		System.out.println(order_id);System.out.println(cust_id);
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(
				"SELECT itm.name,itm.offerprice,itm.price,itm.image,odr.quantity,itm.brand FROM master_order mo INNER JOIN tblorder odr ON mo.order_id = odr.order_id INNER JOIN item itm ON odr.item_id = itm.item_id WHERE mo.cust_id="+cust_id+" AND mo.order_id="+order_id);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<Item> results = query.list();
		return results;
	}
}
