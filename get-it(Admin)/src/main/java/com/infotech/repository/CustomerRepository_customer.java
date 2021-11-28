package com.infotech.repository;

import java.util.List;

import com.infotech.model.Cart;
import com.infotech.model.Customer;
import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Wishlist;

public interface CustomerRepository_customer {

	List<Item> findAll();
	
	Item findById(int id);

	List<Item> findBysk_Id(int id);

	Customer findByEmail(String email);

	void addtocart(Cart cart);

	void addtowishlist(Wishlist wishlist);

	int cartItemCount(Integer cust_id);
	
	List<Cart> cartItemList(Integer cust_id);

	Cart findById_cart(int cart_id);

	void deletecartitem(Cart cart);

	int findByshop_id(Integer cust_id);

	int countDistinctItem(Integer cust_id);

	List findTotalAmount(Integer cust_id);

	List findShop_idCart(Integer cust_id);

	int findMaxOrder_id();

	void placeOrder(Master_order master_order, Integer cust_id);

	List getItemByGrocery();

	List getItemByBreadAndDairy();

	List getItemByFruits();

	List getItemByBeverages();

	List getItemBySweets();

	List getItemByPackedSnack();

	List<Wishlist> wishItemList(Integer cust_id);

	Wishlist findById_wish(int wish_id);

	void deletewishitem(Wishlist wishlist);

	List<Item> findAllLatest();

	List findOrder_id(Integer cust_id);

	List findOrderDetail(int order_id, int cust_id);

	List findOrderList(int order_id, int cust_id);

}
