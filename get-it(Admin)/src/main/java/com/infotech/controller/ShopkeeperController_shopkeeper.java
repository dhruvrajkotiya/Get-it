package com.infotech.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotech.model.Item;
import com.infotech.model.Master_order;
import com.infotech.model.Shop;
import com.infotech.model.Shopkeeper;
import com.infotech.service.ShopkeeperService_shopkeeper;
import com.infotech.service.ShopService;
import com.infotech.service.ShopkeeperService_admin;

@Controller
@RequestMapping("/shopkeeper")
public class ShopkeeperController_shopkeeper {

	@Autowired
	private ShopkeeperService_admin shopkeeperService_admin;
	@Autowired
	private ShopkeeperService_shopkeeper shopkeeperService_shopkeeper;
	@Autowired
	private ShopService shopService;
	@Autowired
	private MailSender mailSender;

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("shopkeeper") == null) {
			return "redirect:login";

		} else {
			Shopkeeper sp = (Shopkeeper) request.getSession().getAttribute("shopkeeper");
			int sk_id = sp.getSk_id();
			model.addAttribute("listitem", shopkeeperService_shopkeeper.findAll(sk_id));
			return "shopkeeper/dashboard";
		}
	}

	@RequestMapping(value = "/offers", method = RequestMethod.GET)
	public String offers(Model model, HttpServletRequest request) {
		return "shopkeeper/offers";
	}

	@RequestMapping(value = "/notifications", method = RequestMethod.GET)
	public String notifications(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("shopkeeper") == null) {
			return "redirect:login";

		} else {
			Shopkeeper sp = (Shopkeeper) request.getSession().getAttribute("shopkeeper");
			model.addAttribute("order", shopkeeperService_shopkeeper.getOrderDetail(sp.getSk_id()));
			return "shopkeeper/notifications";
		}
	}

	@RequestMapping(value = "/orderhistory", method = RequestMethod.GET)
	public String oderhistory(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("shopkeeper") == null) {
			return "redirect:login";

		} else {
			Shopkeeper sp = (Shopkeeper) request.getSession().getAttribute("shopkeeper");
			model.addAttribute("order", shopkeeperService_shopkeeper.getOrderHistoryDetail(sp.getSk_id()));
			return "shopkeeper/orderhistory";
		}
	}

	@RequestMapping(value = "/orderdetail", method = RequestMethod.POST)
	public String orderdetail(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("shopkeeper") == null) {
			return "redirect:login";

		} else {
			model.addAttribute("orderitemlist",
					shopkeeperService_shopkeeper.getOrderItemList(request.getParameter("order_id")));
			model.addAttribute("itm_detail", shopkeeperService_shopkeeper.itm_detail(request.getParameter("order_id")));

			return "shopkeeper/orderdetail";
		}
	}

	@RequestMapping(value = "/orderhistorydetail", method = RequestMethod.POST)
	public String orderhistorydetail(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("shopkeeper") == null) {
			return "redirect:login";

		} else {
			model.addAttribute("orderitemlist",
					shopkeeperService_shopkeeper.getOrderItemList(request.getParameter("order_id")));
			model.addAttribute("itm_detail", shopkeeperService_shopkeeper.itm_detail(request.getParameter("order_id")));

			return "shopkeeper/orderhistorydetail";
		}
	}

	@RequestMapping(value = "/acceptorder", method = RequestMethod.POST)
	public String acceptorder(HttpServletRequest request) {

		Master_order mo = shopkeeperService_shopkeeper.findById1(Integer.parseInt(request.getParameter("id")));
		mo.setId(Integer.parseInt(request.getParameter("id")));
		mo.setOrder_id(request.getParameter("order_id"));
		mo.setCust_id(request.getParameter("cust_id"));
		mo.setShop_id(request.getParameter("shop_id"));
		mo.setDelivery_address(request.getParameter("delivery_address"));
		mo.setStatus(request.getParameter("status"));
		mo.setTotal_amount(request.getParameter("total_amount"));
		shopkeeperService_shopkeeper.acceptOrder(mo);
		return "redirect:notifications";
	}

	@RequestMapping(value = "/rejectorder", method = RequestMethod.POST)
	public String rejectorder(HttpServletRequest request) {

		Master_order mo = shopkeeperService_shopkeeper.findById1(Integer.parseInt(request.getParameter("id")));
		mo.setId(Integer.parseInt(request.getParameter("id")));
		mo.setOrder_id(request.getParameter("order_id"));
		mo.setCust_id(request.getParameter("cust_id"));
		mo.setShop_id(request.getParameter("shop_id"));
		mo.setDelivery_address(request.getParameter("delivery_address"));
		mo.setStatus(request.getParameter("status"));
		mo.setTotal_amount(request.getParameter("total_amount"));
		shopkeeperService_shopkeeper.acceptOrder(mo);
		return "redirect:notifications";
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus(Model model, HttpServletRequest request) {
		return "shopkeeper/contactus";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus(Model model, HttpServletRequest request) {
		return "shopkeeper/aboutus";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) {
		return "shopkeeper/login";

	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Model model, HttpServletRequest request) {
		return "shopkeeper/signup";

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String forgotpassword(Model model, HttpServletRequest request) {
		return "shopkeeper/forgotpassword";

	}

	@RequestMapping(value = "/authenticateshopkeeper", method = RequestMethod.POST)
	public String authenticate(@RequestParam String email, @RequestParam String password, HttpServletRequest request,
			RedirectAttributes map) {
		Shopkeeper shopkeeper = shopkeeperService_admin.findByEmail(email);
		if (shopkeeper != null && shopkeeper.getPassword().equals(password)
				&& shopkeeper.getShopkeeperstatus().equals("ACTIVEBYADMIN")) {
			request.getSession().setAttribute("shopkeeper", shopkeeper);
			request.getSession().removeAttribute("error");
			return "redirect:/shopkeeper/dashboard";
		} else if (shopkeeper != null && shopkeeper.getPassword().equals(password)
				&& shopkeeper.getShopkeeperstatus().equals("ACTIVE")) {
			map.addFlashAttribute("requested", "Your KYC is pending Get-it contact you soon");
			return "redirect:/shopkeeper/login";
		} else if (shopkeeper != null && shopkeeper.getPassword().equals(password)
				&& shopkeeper.getShopkeeperstatus().equals("A")) {
			map.addFlashAttribute("pending", "Please verify email id");
			return "redirect:/shopkeeper/login";
		} else {
			map.addFlashAttribute("error", "Email Id or Password Incorrect");
			return "redirect:/shopkeeper/login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("shopkeeper");
		return "shopkeeper/login";
	}

	@RequestMapping(value = "/additem", method = RequestMethod.POST)
	public String handleFileUpload(HttpServletRequest request, @RequestParam("image") MultipartFile image)
			throws Exception {
		if (!image.isEmpty()) {
			try {
				Item item2 = new Item();
				item2.setName(request.getParameter("name"));
				item2.setItemtype(request.getParameter("itemtype"));
				item2.setBrand(request.getParameter("brand"));
				item2.setPrice(request.getParameter("price"));
				item2.setOfferprice(request.getParameter("offerprice"));
				item2.setSk_id(request.getParameter("sk_id"));
				item2.setAvailability(request.getParameter("availability"));
				item2.setDescription(request.getParameter("description"));
				byte[] bytes = image.getBytes();

				// Creating the directory to store file
				String rootPath = "C:\\Users\\Dell\\eclipse-practice-workspace\\get-it(Admin)\\src\\main\\webapp\\resources\\admin\\img";
				File dir = new File(rootPath + File.separator + "item_images");
				// System.out.println(dir.exists());
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				String filename = image.getOriginalFilename();
				// System.out.println(filename);
				File serverFile = new File(dir.getAbsolutePath() + File.separator + filename);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				item2.setImage(filename);
				shopkeeperService_shopkeeper.insert(item2);
				return "redirect:/shopkeeper/dashboard";
			} catch (Exception e) {

				return "You failed to upload ";
			}
		} else {
			return "You failed to upload because the file was empty.";
		}

	}

	@RequestMapping(value = "/delitem", method = RequestMethod.GET)
	public String delete(@RequestParam int id) {
		Item item = shopkeeperService_shopkeeper.findById(id);
		shopkeeperService_shopkeeper.delete(item);
		return "redirect:/shopkeeper/dashboard";
	}

	@RequestMapping(value = "/edititem", method = RequestMethod.POST)
	public String edititem(HttpServletRequest request, @RequestParam("image") MultipartFile image) throws Exception {
		if (!image.isEmpty()) {
			try {
				Item item2 = new Item();
				item2.setItem_id(Integer.parseInt(request.getParameter("item_id")));
				item2.setName(request.getParameter("name"));
				item2.setItemtype(request.getParameter("itemtype"));
				item2.setBrand(request.getParameter("brand"));
				item2.setPrice(request.getParameter("price"));
				item2.setOfferprice(request.getParameter("offerprice"));
				item2.setSk_id(request.getParameter("sk_id"));
				item2.setAvailability(request.getParameter("availability"));
				item2.setDescription(request.getParameter("description"));

				byte[] bytes = image.getBytes();

				// Creating the directory to store file
				String rootPath = "C:\\Users\\Dell\\eclipse-practice-workspace\\get-it(Admin)\\src\\main\\webapp\\resources\\admin\\img";
				File dir = new File(rootPath + File.separator + "item_images");
				// System.out.println(dir.exists());
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				String filename = image.getOriginalFilename();
				// System.out.println(filename);
				File serverFile = new File(dir.getAbsolutePath() + File.separator + filename);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				item2.setImage(filename);
				shopkeeperService_shopkeeper.insert(item2);
				return "redirect:/shopkeeper/dashboard";
			} catch (Exception e) {
				System.out.println(e);
				return "You failed to upload ";
			}
		} else {
			return "You failed to upload because the file was empty.";
		}

	}

	@RequestMapping(value = "/saveshopkeeper", method = RequestMethod.POST)
	public String save(@ModelAttribute Shopkeeper shopkeeper, @ModelAttribute Shop shop, HttpServletRequest request,
			RedirectAttributes attributes) {
		Shopkeeper shopkeeper2 = shopkeeperService_shopkeeper.findByEmailIdShopkeeper(shopkeeper.getEmail());
		if (shopkeeper2 == null) {
			int skid = shopkeeperService_admin.insert(shopkeeper);
			shop.setSk_id(skid);
			shopService.insert(shop);
			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(shopkeeper.getEmail());
			message.setSubject("Get-it Account Activation Link");
			message.setText("http://localhost:8080/springproject/shopkeeper/activation/" + skid);
			mailSender.send(message);
			attributes.addFlashAttribute("success", "Account activation link sent to registered email id");
			return "redirect:/shopkeeper/signup";
		} else {
			attributes.addFlashAttribute("error", "Email Id already registered");
			return "redirect:/shopkeeper/signup";
		}
	}

	@RequestMapping(value = "/recovery", method = RequestMethod.POST)
	public String recoverPassword(@ModelAttribute Shopkeeper shopkeeper, RedirectAttributes attributes) {
		Shopkeeper shopkeeper2 = shopkeeperService_shopkeeper.findByEmailIdShopkeeper(shopkeeper.getEmail());
		if (shopkeeper2 != null && shopkeeper.getEmail().equals(shopkeeper2.getEmail())) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setTo(shopkeeper2.getEmail());
				message.setSubject("Get-it Forgot Password Recovery");
				message.setText("Your Get-it account password is : " + shopkeeper2.getPassword());
				mailSender.send(message);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
			return "redirect:/shopkeeper/login";
		} else {
			attributes.addFlashAttribute("error", "Email Id not found");
			return "redirect:/shopkeeper/forgotpassword";
		}
	}

	@RequestMapping(value = "/activation/{sk_id}", method = RequestMethod.GET)
	public ModelAndView shopkeeperActivation(@PathVariable int sk_id, Model model, HttpServletRequest request,
			RedirectAttributes attributes) {

		ModelAndView modelAndView = new ModelAndView("redirect:/shopkeeper/login");
		Shopkeeper sk = shopkeeperService_shopkeeper.findShopkeeperById(sk_id);
		String sk1 = sk.getShopkeeperstatus();
		String status2 = "A";
		String status3 = "ACTIVE";
		if (status2.equals(sk1)) {
			sk.setShopkeeperstatus("ACTIVE");
			shopkeeperService_admin.update(sk);
			attributes.addFlashAttribute("success", "Email id is verifyed successfully");
		} else if (status3.equals(sk1)) {
			attributes.addFlashAttribute("verifyed", "Email id is Already verifyed");
		} else {
			attributes.addFlashAttribute("success", "Email id is Blocked By Admin Contact Customer Support");
		}
		return modelAndView;

	}

}
