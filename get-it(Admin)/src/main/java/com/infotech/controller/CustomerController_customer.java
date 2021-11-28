package com.infotech.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotech.model.Cart;
import com.infotech.model.Customer;
import com.infotech.model.Master_order;
import com.infotech.model.Wishlist;
import com.infotech.service.CustomerService_admin;
import com.infotech.service.CustomerService_customer;

@Controller
@RequestMapping("/customer")
public class CustomerController_customer {

	@Autowired
	private CustomerService_customer customerService_customer;
	@Autowired
	private MailSender mailSender;
	@Autowired
	private CustomerService_admin userService_admin;

	@RequestMapping(value = { "/home", "/shop/home" }, method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:login";

		} else {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(customer.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(customer.getCust_id()));
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			return "customer/index";
		}

	}

	@RequestMapping(value = "/shop/{sk_id}", method = RequestMethod.GET)
	public ModelAndView shop(@PathVariable int sk_id, Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			ModelAndView modelAndView = new ModelAndView("redirect:/customer/login");
			return modelAndView;

		} else {
			ModelAndView modelAndView = new ModelAndView("customer/shop");
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("shopitemlist", customerService_customer.findBysk_Id(sk_id));

			return modelAndView;
		}
	}

	@RequestMapping(value = "/shop/productdetail/{item_id}", method = RequestMethod.GET)
	public ModelAndView productdetail(@PathVariable int item_id, Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			ModelAndView modelAndView = new ModelAndView("redirect:customer/login");
			return modelAndView;
		} else {
			ModelAndView modelAndView = new ModelAndView("customer/productdetail");
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("productdetail", customerService_customer.findById(item_id));
			return modelAndView;
		}
	}

	@RequestMapping(value = "delcartitem/{cart_id}", method = RequestMethod.GET)
	public String delcartitem(@PathVariable int cart_id) {
		Cart cart = customerService_customer.findById_cart(cart_id);
		customerService_customer.deletecartitem(cart);
		return "redirect:/customer/home";
	}

	@RequestMapping(value = "delwishitem/{wish_id}", method = RequestMethod.GET)
	public String delwishitem(@PathVariable int wish_id) {
		Wishlist wishlist = customerService_customer.findById_wish(wish_id);
		customerService_customer.deletewishitem(wishlist);
		return "redirect:/customer/home";
	}

	@RequestMapping(value = "/grocery", method = RequestMethod.GET)
	public String grocery(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemByGrocery());
			return "customer/grocery";
		}
	}

	@RequestMapping(value = "/breadanddairy", method = RequestMethod.GET)
	public String breadanddairy(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemByBreadAndDairy());
			return "customer/breadanddairy";
		}
	}

	@RequestMapping(value = "/fruits", method = RequestMethod.GET)
	public String fruits(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemByFruits());
			return "customer/fruits";
		}
	}

	@RequestMapping(value = "/beverages", method = RequestMethod.GET)
	public String beverages(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemByBeverages());
			return "customer/beverages";
		}
	}

	@RequestMapping(value = "/sweets", method = RequestMethod.GET)
	public String sweets(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemBySweets());
			return "customer/sweets";
		}
	}

	@RequestMapping(value = "/packedsnack", method = RequestMethod.GET)
	public String packedsnack(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("ItemByGrocery", customerService_customer.getItemByPackedSnack());
			return "customer/packedsnack";
		}
	}

	@RequestMapping(value = "/myprofile", method = RequestMethod.GET)
	public String myprofile(HttpServletRequest request, Model model) {
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";
		} else {
			Customer cu = (Customer) request.getSession().getAttribute("customer");
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(cu.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(cu.getCust_id()));
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			return "customer/myprofile";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "customer/login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {

		return "customer/signup";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("customer");
		return "redirect:/customer/login";
	}

	@RequestMapping(value = "/customerlogin", method = RequestMethod.POST)
	public String authenticate(@RequestParam String email, @RequestParam String password, HttpServletRequest request,
			RedirectAttributes map) {
		Customer customer = customerService_customer.findByEmail(email);

		if (customer != null && customer.getPassword().equals(password)
				&& customer.getCustomerstatus().equals("ACTIVE")) {
			request.getSession().setAttribute("customer", customer);
			request.getSession().removeAttribute("error");
			return "redirect:/customer/home";
		} else if (customer != null && customer.getPassword().equals(password)
				&& customer.getCustomerstatus().equals("A")) {
			map.addFlashAttribute("pending", "Email id not verifyed");
			return "redirect:/customer/login";
		} else {
			map.addFlashAttribute("error", "Email or Password incorrect");
			return "redirect:/customer/login";
		}
	}

	@RequestMapping(value = "/shop/addtocart", method = RequestMethod.POST)
	public String addtocart(HttpServletRequest request, @ModelAttribute Cart cart) {
		customerService_customer.addtocart(cart);
		return "redirect:/customer/home";

	}

	@RequestMapping(value = "/shop/productdetail/addtocart", method = RequestMethod.POST)
	public String addtocart1(HttpServletRequest request, @ModelAttribute Cart cart) {

		customerService_customer.addtocart(cart);
		return "redirect:/customer/home";
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(Model model, HttpServletRequest request, RedirectAttributes map) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:login";

		} else {
			if (customerService_customer.countDistinctItem(customer.getCust_id()) == 1) {
				model.addAttribute("Itemlist", customerService_customer.findAll());
				model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
				model.addAttribute("cartitemcount", customerService_customer.cartItemCount(customer.getCust_id()));
				model.addAttribute("cartitemlist", customerService_customer.cartItemList(customer.getCust_id()));
				model.addAttribute("Total_amount",
						customerService_customer.findTotalAmount(customer.getCust_id()).get(0));
				model.addAttribute("shop_id", customerService_customer.findShop_idCart(customer.getCust_id()).get(0));
				return "customer/cart";
			} else if (customerService_customer.countDistinctItem(customer.getCust_id()) == 0) {
				map.addFlashAttribute("empty_cart", "Your shopping cart is Empty");
				return "redirect:/customer/home";
			} else {
				map.addFlashAttribute("error",
						"Sorry : You have added item from two shop, you can buy item from one shop at time");

				return "redirect:/customer/home";
			}

		}

	}

	@RequestMapping(value = "/placeorder", method = RequestMethod.POST)
	public String placeorder(HttpServletRequest request) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		int maxOrder_id = customerService_customer.findMaxOrder_id();
		Master_order master_order = new Master_order();
		master_order.setCust_id(request.getParameter("cust_id"));
		master_order.setOrder_id(Integer.toString(maxOrder_id));
		master_order
				.setDelivery_address(request.getParameter("house_number") + ", " + request.getParameter("house_name")
						+ ", " + request.getParameter("landmark") + ", " + request.getParameter("area_name") + ", "
						+ request.getParameter("city_name") + ", " + request.getParameter("pin_code"));
		master_order.setShop_id(request.getParameter("shop_id"));
		master_order.setStatus("1");
		master_order.setTotal_amount(request.getParameter("total_amount"));
		customerService_customer.placeOrder(master_order, customer.getCust_id());
		return "redirect:/customer/cart";
	}

	@RequestMapping(value = "/editcartitem", method = RequestMethod.POST)
	public String editcartitem(HttpServletRequest request, @ModelAttribute Cart cart) {
		String cart_id = request.getParameter("cart_id");
		// String item_id = request.getParameter("item_id");
		String cust_id = request.getParameter("cust_id");
		String quantity = request.getParameter("quantity");

		Cart obj = customerService_customer.findById_cart(Integer.parseInt(cart_id));

		obj.setCust_id(Integer.parseInt(cust_id));
		obj.setQuantity(Integer.parseInt(quantity));

		customerService_customer.addtocart(obj);
		return "redirect:/customer/cart";
	}

	@RequestMapping(value = "/wishlist", method = RequestMethod.GET)
	public String wishlist(Model model, HttpServletRequest request, RedirectAttributes map) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:login";

		} else {
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(customer.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(customer.getCust_id()));
			model.addAttribute("wishitemlist", customerService_customer.wishItemList(customer.getCust_id()));
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			return "customer/wishlist";
		}

	}

	@RequestMapping(value = "/shop/productdetail/addtowishlist", method = RequestMethod.POST)
	public String addtowishlist(HttpServletRequest request, @ModelAttribute Wishlist wishlist) {
		customerService_customer.addtowishlist(wishlist);
		return "redirect:/customer/home";
	}

	@RequestMapping(value = "/orderhistory", method = RequestMethod.GET)
	public String orderhistory(Model model, HttpServletRequest request) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";

		} else {
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(customer.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(customer.getCust_id()));
			model.addAttribute("orderhistory", customerService_customer.findOrder_id(customer.getCust_id()));
			model.addAttribute("Itemlist", customerService_customer.findAll());
			model.addAttribute("latestItemlist", customerService_customer.findAllLatest());
			return "customer/orderhistory";
		}

	}

	@RequestMapping(value = "/customerorderdetail", method = RequestMethod.POST)
	public String customerorderdetail(Model model, HttpServletRequest request) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if (request.getSession().getAttribute("customer") == null) {
			return "redirect:/customer/login";

		} else {
			int order_id = Integer.parseInt(request.getParameter("order_id"));
			int cust_id = customer.getCust_id();
			model.addAttribute("cartitemcount", customerService_customer.cartItemCount(customer.getCust_id()));
			model.addAttribute("cartitemlist", customerService_customer.cartItemList(customer.getCust_id()));
			model.addAttribute("itemlistcustomer", customerService_customer.findOrderList(order_id, cust_id));
			model.addAttribute("order_detail", customerService_customer.findOrderDetail(order_id, cust_id));
			return "customer/orderhistorydetail";
		}

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotpassword(Model model, HttpServletRequest request) {

		return "customer/forgotpassword";

	}

	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String save(@ModelAttribute Customer customer, HttpServletRequest request, RedirectAttributes attributes) {
		Customer customer2 = userService_admin.findByEmail(customer.getEmail());
		if (customer2 == null) {
			userService_admin.insert(customer);

			Customer customer3 = userService_admin.findByEmail(customer.getEmail());
			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(customer.getEmail());
			message.setSubject("Get-it Account Activation");
			message.setText("Your Get-it account activation link : "
					+ "http://localhost:8080/springproject/customer/activation/" + customer3.getCust_id());
			mailSender.send(message);
			attributes.addFlashAttribute("success", "Get-it account activation link is sent to registered email id");

			return "redirect:/customer/login";
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
			return "redirect:/customer/signup";
		}
	}

	@RequestMapping(value = "/activation/{cust_id}", method = RequestMethod.GET)
	public ModelAndView activation(@PathVariable int cust_id, Model model, HttpServletRequest request,
			RedirectAttributes attributes) {
		ModelAndView modelAndView = new ModelAndView("redirect:/customer/login");
		Customer customer = userService_admin.findById(cust_id);
		String customer1 = customer.getCustomerstatus();
		String status2 = "A";
		String status3 = "ACTIVE";
		if (status2.equals(customer1)) {
			customer.setCustomerstatus("ACTIVE");
			userService_admin.update(customer);
			attributes.addFlashAttribute("success", "Email id is verifyed successfully");
		} else if (status3.equals(customer1)) {
			attributes.addFlashAttribute("verifyed", "Email id is Already verifyed");
		} else {
			attributes.addFlashAttribute("success", "Email id is Blocked By Admin Contact Customer Support");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/recovery", method = RequestMethod.POST)
	public String recoverPassword(@ModelAttribute Customer customer, RedirectAttributes attributes) {
		Customer customer2 = userService_admin.findByEmail(customer.getEmail());
		if (customer2 != null && customer.getEmail().equals(customer2.getEmail())) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setTo(customer2.getEmail());
				message.setSubject("Get-it Forgot Password Recovery");
				message.setText("Your Get-it account password is : " + customer2.getPassword());
				mailSender.send(message);
				attributes.addFlashAttribute("success", "Password has been sent successfully to your email id");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
			return "redirect:/customer/forgotpassword";
		} else {
			attributes.addFlashAttribute("error", "email not found");
			return "redirect:/customer/forgotpassword";
		}
	}
}
