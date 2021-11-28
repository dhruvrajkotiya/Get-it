package com.infotech.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotech.model.Customer;
import com.infotech.service.CustomerService_admin;

@Controller
@RequestMapping("/admin")
public class CustomerController_admin {

	@Autowired
	private CustomerService_admin userService_admin;

	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String save(@ModelAttribute Customer customer, HttpServletRequest request, RedirectAttributes attributes) {
		Customer customer2 = userService_admin.findByEmail(customer.getEmail());
		if (customer2 == null) {
			userService_admin.insert(customer);
			attributes.addFlashAttribute("success", "Insert Data Successfully");
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
		}

		return "redirect:/admin/adduser";
	}

	@RequestMapping(value = "/userlist", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		model.addAttribute("listuser", userService_admin.findAll());
		return "admin/listuser";
	}

	@RequestMapping(value = "/deluser", method = RequestMethod.GET)
	public String delete(@RequestParam int id) {
		Customer user = userService_admin.findById(id);
		userService_admin.delete(user);
		return "redirect:/admin/userlist";
	}

	@RequestMapping(value = "/updateuser", method = RequestMethod.POST)
	public String Update(@ModelAttribute Customer user, HttpServletRequest request) {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");

		Customer obj = userService_admin.findById(Integer.parseInt(id));
		obj.setAddress(address);
		obj.setName(name);
		obj.setContact(contact);
		obj.setEmail(email);
		obj.setPassword(password);
		userService_admin.update(obj);

		return "redirect:/admin/userlist";
	}
}
