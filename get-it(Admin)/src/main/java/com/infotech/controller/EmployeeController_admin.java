package com.infotech.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.infotech.model.Employee;

import com.infotech.service.EmployeeService;

@Controller
@RequestMapping("/admin")
public class EmployeeController_admin {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping(value = "/saveemployee", method = RequestMethod.POST)
	public String save(@ModelAttribute Employee employee, HttpServletRequest request, RedirectAttributes attributes) {

		Employee employee2 = employeeService.findByEmail(employee.getEmail());
		if (employee2 == null) {
			employeeService.insert(employee);
			attributes.addFlashAttribute("success", "Insert Data Successfully");
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
		}

		return "redirect:/admin/addemployee";
	}

	@RequestMapping(value = "/employeelist", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		model.addAttribute("listemp", employeeService.findAll());
		return "admin/listemployee";
	}

	@RequestMapping(value = "/del", method = RequestMethod.GET)
	public String delete(@RequestParam int id) {
		Employee employee = employeeService.findById(id);
		employeeService.delete(employee);
		return "redirect:/admin/employeelist";
	}

	@RequestMapping(value = "/updateemployee", method = RequestMethod.POST)
	public String Update(@ModelAttribute Employee employee, HttpServletRequest request) {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String date = request.getParameter("dob");
		Date dob = Date.valueOf(date);// converting string into sql date
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");

		Employee obj = employeeService.findById(Integer.parseInt(id));
		obj.setAddress(address);
		obj.setName(name);
		obj.setContact(contact);
		obj.setEmail(email);
		obj.setPassword(password);
		obj.setDob(dob);
		employeeService.update(obj);

		return "redirect:/admin/employeelist";
	}

}
