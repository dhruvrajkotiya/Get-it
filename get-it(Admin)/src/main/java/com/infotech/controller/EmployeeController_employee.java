package com.infotech.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotech.model.Delivery;
import com.infotech.model.Employee;
import com.infotech.model.Master_order;
import com.infotech.service.EmployeeService;
import com.infotech.service.EmployeeService_employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController_employee {

	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private EmployeeService_employee employeeService_employee;
	@Autowired
	private MailSender mailSender;

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		model.addAttribute("listitem", employeeService_employee.findOrder());
		return "employee/dashboard";
	}

	@RequestMapping(value = "/myorder", method = RequestMethod.GET)
	public String myorder(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("employee") == null) {
			return "redirect:login";

		} else {
			Employee emp = (Employee) request.getSession().getAttribute("employee");
			int emp_id = emp.getEmp_id();
			model.addAttribute("listitem", employeeService_employee.findMyOrder(emp_id));
			return "employee/myorder";
		}
	}

	@RequestMapping(value = "/deliveredorderhistory", method = RequestMethod.GET)
	public String deliveredorderhistory(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("employee") == null) {
			return "redirect:login";

		} else {
			Employee emp = (Employee) request.getSession().getAttribute("employee");
			int emp_id = emp.getEmp_id();
			model.addAttribute("listitem", employeeService_employee.findDeliveredOrderHistory(emp_id));
			return "employee/deliveredorderhistory";
		}
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus(Model model, HttpServletRequest request) {
		return "employee/contactus";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus(Model model, HttpServletRequest request) {
		return "employee/aboutus";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) {
		return "employee/login";

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotpassword(Model model, HttpServletRequest request) {
		return "employee/forgotpassword";

	}

	@RequestMapping(value = "/myprofile", method = RequestMethod.GET)
	public String myprfile(Model model, HttpServletRequest request) {
		return "employee/profile";

	}

	@RequestMapping(value = "/authenticateemployee", method = RequestMethod.POST)
	public String authenticate(@RequestParam String email, @RequestParam String password, HttpServletRequest request,
			RedirectAttributes map) {
		Employee employee = employeeService.findByEmail(email);
		if (employee != null && employee.getPassword().equals(password)) {
			request.getSession().setAttribute("employee", employee);

			request.getSession().removeAttribute("error");
			return "redirect:/employee/dashboard";
		} else {
			map.addFlashAttribute("error", "Email or Password incorrect!");
			return "redirect:/employee/login";
		}
	}

	@RequestMapping(value = "/changedeliverystatus", method = RequestMethod.POST)
	public String changedeliverystatus(Model model, HttpServletRequest request) {

		Delivery delivery = new Delivery();
		Employee emp = (Employee) request.getSession().getAttribute("employee");
		int emp_id = emp.getEmp_id();

		delivery.setEmp_id(emp_id);
		delivery.setOrder_id(Integer.parseInt(request.getParameter("order_id")));
		delivery.setStatus(request.getParameter("status"));

		Master_order mo = employeeService_employee.findById(Integer.parseInt(request.getParameter("id")));
		mo.setId(Integer.parseInt(request.getParameter("id")));
		mo.setStatus(request.getParameter("status"));
		employeeService_employee.changeStatusMasterOrder(mo);
		employeeService_employee.insertIntoDelivery(delivery);
		return "redirect:/employee/myorder";

	}

	@RequestMapping(value = "/changedeliverystatus1", method = RequestMethod.POST)
	public String changedeliverystatus1(Model model, HttpServletRequest request) {

		Delivery delivery = new Delivery();
		Employee emp = (Employee) request.getSession().getAttribute("employee");
		int emp_id = emp.getEmp_id();
		delivery.setId(Integer.parseInt(request.getParameter("del_id")));
		delivery.setEmp_id(emp_id);
		delivery.setOrder_id(Integer.parseInt(request.getParameter("order_id")));
		delivery.setStatus(request.getParameter("status"));

		employeeService_employee.insertIntoDelivery(delivery);
		return "redirect:/employee/myorder";

	}

	@RequestMapping(value = "/rejectorderbyemployee", method = RequestMethod.POST)
	public String rejectorderbyemployee(Model model, HttpServletRequest request) {

		Delivery del = employeeService_employee.findDeliveryById(Integer.parseInt(request.getParameter("del_id")));
		employeeService_employee.deleteDelivery(del);

		Master_order mo = employeeService_employee.findById(Integer.parseInt(request.getParameter("mo_id")));
		mo.setId(Integer.parseInt(request.getParameter("mo_id")));
		mo.setStatus(request.getParameter("status"));
		employeeService_employee.changeStatusMasterOrder(mo);

		return "redirect:/employee/myorder";

	}

	@RequestMapping(value = "/updateemployee", method = RequestMethod.POST)
	public String Update(@ModelAttribute Employee employee, HttpServletRequest request) {

		String id = request.getParameter("id");
		Employee obj = employeeService.findById(Integer.parseInt(id));
		obj.setAddress(request.getParameter("address"));
		obj.setName(request.getParameter("name"));
		obj.setContact(request.getParameter("contact"));
		obj.setEmail(request.getParameter("email"));
		obj.setPassword(request.getParameter("password"));
		obj.setJoin_date(Date.valueOf(request.getParameter("join_date")));
		obj.setDob(Date.valueOf(request.getParameter("dob"))); // converting string into sql date
		employeeService.update(obj);

		return "redirect:/employee/myprofile";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request) {
		request.getSession().removeAttribute("employee");
		return "redirect:/employee/login";

	}

	@RequestMapping(value = "/recovery", method = RequestMethod.POST)
	public String recoverPassword(@ModelAttribute Employee employee, RedirectAttributes attributes) {
		Employee employee2 = employeeService_employee.findByEmailIdEmployee(employee.getEmail());
		if (employee2 != null && employee.getEmail().equals(employee2.getEmail())) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setTo(employee2.getEmail());
				message.setSubject("Get-it Forgot Password Recovery");
				message.setText("Your Get-it account password is : " + employee2.getPassword());
				mailSender.send(message);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
			return "redirect:/employee/login";
		} else {
			attributes.addFlashAttribute("error", "Email Id not found");
			return "redirect:/employee/forgotpassword";
		}
	}
}
