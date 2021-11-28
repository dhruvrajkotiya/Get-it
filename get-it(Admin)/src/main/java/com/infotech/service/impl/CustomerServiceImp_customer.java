package com.infotech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotech.model.Cart;
import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Wishlist;
import com.infotech.model.Customer;
import com.infotech.repository.CustomerRepository_customer;
import com.infotech.service.CustomerService_customer;

@Service
@Transactional
public class CustomerServiceImp_customer implements CustomerService_customer {

	@Autowired
	private CustomerRepository_customer customerRepository_customer;

	@Override
	public List<Item> findAll() {
		// TODO Auto-generated method stub
		return customerRepository_customer.findAll();
	}

	@Override
	public Item findById(int id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findById(id);
	}

	@Override
	public List<Item> findBysk_Id(int id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findBysk_Id(id);
	}

	@Override
	public Customer findByEmail(String email) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findByEmail(email);
	}

	@Override
	public void addtocart(Cart cart) {
		// TODO Auto-generated method stub
		customerRepository_customer.addtocart(cart);
		
	}

	@Override
	public void addtowishlist(Wishlist wishlist) {
		// TODO Auto-generated method stub
		customerRepository_customer.addtowishlist(wishlist);
	}

	@Override
	public int cartItemCount(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.cartItemCount(cust_id);
	}

	@Override
	public List<Cart> cartItemList(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.cartItemList(cust_id);
	}

	@Override
	public void deletecartitem(Cart cart) {
		// TODO Auto-generated method stub
		customerRepository_customer.deletecartitem(cart);
		
	}

	@Override
	public Cart findById_cart(int cart_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findById_cart(cart_id);
	}

	@Override
	public int findByshop_id(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findByshop_id(cust_id);
	}

	@Override
	public int countDistinctItem(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.countDistinctItem(cust_id);
	}

	@Override
	public List findTotalAmount(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findTotalAmount(cust_id);
	}

	@Override
	public List findShop_idCart(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findShop_idCart(cust_id);
	}

	@Override
	public int findMaxOrder_id() {
		// TODO Auto-generated method stub
		return customerRepository_customer.findMaxOrder_id();
	}

	@Override
	public void placeOrder(Master_order master_order,Integer cust_id) {
		// TODO Auto-generated method stub
		customerRepository_customer.placeOrder(master_order,cust_id);
		
	}

	@Override
	public List getItemByGrocery() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemByGrocery();
	}

	@Override
	public List getItemByBreadAndDairy() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemByBreadAndDairy();
	}

	@Override
	public List getItemByFruits() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemByFruits();
	}

	@Override
	public List getItemByBeverages() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemByBeverages();
	}

	@Override
	public List getItemBySweets() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemBySweets();
	}

	@Override
	public List getItemByPackedSnack() {
		// TODO Auto-generated method stub
		return customerRepository_customer.getItemByPackedSnack();
	}

	@Override
	public List<Wishlist> wishItemList(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.wishItemList(cust_id);
	}

	@Override
	public Wishlist findById_wish(int wish_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findById_wish(wish_id);
	}

	@Override
	public void deletewishitem(Wishlist wishlist) {
		// TODO Auto-generated method stub
		customerRepository_customer.deletewishitem(wishlist);
	}

	@Override
	public List<Item> findAllLatest() {
		// TODO Auto-generated method stub
		return customerRepository_customer.findAllLatest();
	}

	@Override
	public List findOrder_id(Integer cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findOrder_id(cust_id);
	}

	@Override
	public List findOrderList(int order_id, int cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findOrderList(order_id,cust_id);
	}

	@Override
	public List findOrderDetail(int order_id, int cust_id) {
		// TODO Auto-generated method stub
		return customerRepository_customer.findOrderDetail(order_id,cust_id);
	}

	
}
