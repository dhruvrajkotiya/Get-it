package com.infotech.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infotech.model.Admin;
import com.infotech.model.Shop;
import com.infotech.model.Shopkeeper;
import com.infotech.service.ShopService;
import com.infotech.service.ShopkeeperService_admin;

@Controller
@RequestMapping("/admin")
public class ShopkeeperController_admin {

	@Autowired
	private ShopkeeperService_admin shopkeeperService_admin;
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(value = "/saveshopkeeper", method = RequestMethod.POST)
	public String save(@ModelAttribute Shopkeeper shopkeeper,@ModelAttribute Shop shop, HttpServletRequest request) {
		int skid=shopkeeperService_admin.insert(shopkeeper);
		shop.setSk_id(skid);
	shopService.insert(shop);
		return "redirect:/admin/addshopkeeper";
	}
	@RequestMapping(value = "/shopkeeperlist", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		model.addAttribute("shopkeeperlist", shopkeeperService_admin.findAll());
		return "admin/listshopkeeper";
	}
	
	@RequestMapping(value = "/delshopkeeper", method = RequestMethod.GET)
	public String delete(@RequestParam int id) {
		Shop shop = shopService.findById(id);
		shopService.delete(shop);
		Shopkeeper shopkeeper = shopkeeperService_admin.findById(id);
		shopkeeperService_admin.delete(shopkeeper);
		
		return "redirect:/admin/shopkeeperlist";
	}
	
	@RequestMapping(value = "/updateshopkeeper", method = RequestMethod.POST)
	public String Update(@ModelAttribute Admin admin, HttpServletRequest request) {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String shopkeeperstatus = request.getParameter("shopkeeperstatus");
		String shop_id = request.getParameter("shop_id");
		String registrationnumber = request.getParameter("registrationnumber");
		String shopname = request.getParameter("shopname");
		String shopaddress = request.getParameter("shopaddress");
		String shopcontact = request.getParameter("shopcontact");
		
		Shopkeeper obj = shopkeeperService_admin.findById(Integer.parseInt(id));
		Shop obj1 = shopService.findById(Integer.parseInt(shop_id));
		
		obj.setAddress(address);
		obj.setName(name);
		obj.setContact(contact);
		obj.setEmail(email);
		obj.setPassword(password);
		obj.setShopkeeperstatus(shopkeeperstatus);
		obj1.setRegistrationnumber(registrationnumber);
		obj1.setShopname(shopname);
		obj1.setShopaddress(shopaddress);
		obj1.setShopcontact(shopcontact);
		
		shopkeeperService_admin.update(obj);
		shopService.insert(obj1);
		return "redirect:/admin/shopkeeperlist";
	}


}
