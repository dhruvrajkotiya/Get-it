package com.infotech.controller;

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

import com.infotech.model.Admin;
import com.infotech.service.AdminService;
import com.infotech.service.CustomerService_admin;
import com.infotech.service.EmployeeService;
import com.infotech.service.ShopkeeperService_admin;

@Controller
@RequestMapping("/admin")
public class AdminController_admin {

	@Autowired
	private AdminService adminService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private CustomerService_admin customerService_admin;
	@Autowired
	private MailSender mailSender;
	@Autowired
	private ShopkeeperService_admin shopkeeperService_admin;

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		model.addAttribute("admincount", adminService.countAdmin());
		model.addAttribute("employeecount", employeeService.countEmployee());
		model.addAttribute("usercount", customerService_admin.countCustomer());
		model.addAttribute("shopkeepercount", shopkeeperService_admin.countShopkeeper());
		return "admin/dashboard";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "admin/login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "admin/signup";
	}

	@RequestMapping(value = "/authenticateadmin", method = RequestMethod.POST)
	public String authenticate(@RequestParam String email, @RequestParam String password, HttpServletRequest request,
			RedirectAttributes map) {
		Admin admin = adminService.findByEmail(email);
		if (admin != null && admin.getPassword().equals(password)) {
			request.getSession().setAttribute("admin", admin);
			request.getSession().removeAttribute("error");
			return "redirect:/admin/dashboard";
		} else {
			map.addFlashAttribute("error", "Email or Password incorrect!");
			return "redirect:/admin/login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "redirect:/admin/login";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		return "admin/profile";
	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgot(HttpServletRequest request) {
		return "admin/forgotpassword";
	}

	@RequestMapping(value = "/addadmin", method = RequestMethod.GET)
	public String addadmin() {
		return "admin/addadmin";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute Admin admin, HttpServletRequest request, RedirectAttributes attributes) {
		Admin admin2 = adminService.findByEmail(admin.getEmail());
		if (admin2 == null) {
			adminService.insert(admin);
			attributes.addFlashAttribute("success", "Insert Data Successfully");
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
		}
		return "redirect:/admin/addadmin";
	}

	@RequestMapping(value = "/registeradmin", method = RequestMethod.POST)
	public String registeradmin(@ModelAttribute Admin admin, HttpServletRequest request, RedirectAttributes attributes) {
		Admin admin2 = adminService.findByEmail(admin.getEmail());
		if (admin2 == null) {
			adminService.insert(admin);
			attributes.addFlashAttribute("success", "Insert Data Successfully");
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
		}
		return "redirect:/admin/signup";
	}

	@RequestMapping(value = "/recovery", method = RequestMethod.POST)
	public String recoverPassword(@ModelAttribute Admin admin, RedirectAttributes attributes) {
		Admin admin2 = adminService.findByEmail(admin.getEmail());
		if (admin2 != null && admin.getEmail().equals(admin2.getEmail())) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setTo(admin2.getEmail());
				message.setSubject("Get-it Forgot Password Recovery");
				message.setText("Your Get-it account password is : " + admin2.getPassword());
				mailSender.send(message);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
			return "redirect:/admin/login";
		} else {
			attributes.addFlashAttribute("error", "Email Id not found");
			return "redirect:/admin/forgotpassword";
		}
	}

	@RequestMapping(value = "/addemployee", method = RequestMethod.GET)
	public String addemployee() {
		return "admin/addemployee";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public String adduser() {
		return "admin/adduser";
	}

	@RequestMapping(value = "/addshopkeeper", method = RequestMethod.GET)
	public String addshop() {
		return "admin/addshopkeeper";
	}

	@RequestMapping(value = "/notifications", method = RequestMethod.GET)
	public String notifications(Model model) {
		model.addAttribute("shopkeeperlist", adminService.findNotificationAll());
		return "admin/notifications";
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus() {
		return "admin/contactus";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus() {
		return "admin/aboutus";
	}

	@RequestMapping(value = "/adminlist", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		model.addAttribute("list", adminService.findAll());
		return "admin/listadmin";
	}

	@RequestMapping(value = "/deladmin", method = RequestMethod.GET)
	public String delete(@RequestParam int id) {
		Admin admin = adminService.findById(id);
		adminService.delete(admin);
		return "redirect:/admin/adminlist";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String Update(@ModelAttribute Admin admin, HttpServletRequest request) {

		String id = request.getParameter("id");

		Admin obj = adminService.findById(Integer.parseInt(id));
		obj.setAddress(request.getParameter("address"));
		obj.setName(request.getParameter("name"));
		obj.setContact(request.getParameter("contact"));
		obj.setEmail(request.getParameter("email"));
		obj.setPassword(request.getParameter("password"));

		adminService.update(obj);

		return "redirect:/admin/adminlist";
	}

}
