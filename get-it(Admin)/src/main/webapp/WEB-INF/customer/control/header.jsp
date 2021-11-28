<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav id="top">
		<div class="container">
			<marquee style="color: white;">GET DELIVERY IN 0 - 1
				BUSINESS DAYS &amp; FREE RETURNS</marquee>
			<div class="header-top-left">
				<div class="header-left-cms">
					<aside id="header-left" class="hidden-xs">
						<div class="html-content">
							<div class="box-content">
								<div id="ttcmsheader">
									<div class="ttheader-service">Welcome to the Get-it</div>
								</div>
							</div>
						</div>

					</aside>
				</div>
			</div>

			<div class="header-top-right">
				<div id="top-links" class="nav pull-right">
					<ul class="list-inline">

						<li>
							<div class="dropdown">
								<a href="#" title="My Account" class="dropdown-toggle"
									data-toggle="dropdown"><i class="fa fa-user"></i> <span
									class="hidden-xs hidden-sm hidden-md">My Account</span> <span
									class="caret"></span></a>
								<ul
									class="dropdown-menu dropdown-menu-right account-link-toggle">
									<li><a href="/springproject/customer/myprofile"><i
											class='fa fa-user'></i>My Profile</a></li>
									<li><a href="/springproject/customer/orderhistory"><i
											class='fa fa-history'></i>Order History</a></li>
									<li><a href="/springproject/customer/logout"><i
											class='fa fa-sign-in'></i> Logout</a></li>
								</ul>
							</div>
						</li>
						<li><a href="/springproject/customer/wishlist"
							id="wishlist-total" title="Wish List"> <span
								class="hidden-xs hidden-sm hidden-md">Wish List</span></a></li>
					</ul>
				</div>
			</div>

		</div>

	</nav>
	<div class="full-header">
		<div class="container">
			<div class="header-left">
				<div id="logo">
					<a href="/springproject/customer/home"><img
						src="${pageContext.request.contextPath}/resources/customer/image/catalog/logo.png"
						title="Demo Store" alt="Demo Store" class="img-responsive"></a>
				</div>
			</div>

			<div class="header-right">
				<div id="cart" class="btn-group">
					<button type="button" data-toggle="dropdown"
						data-loading-text="Loading..."
						class="btn btn-inverse btn-block btn-lg dropdown-toggle">
						<i class="fa fa-shopping-cart"></i> <span class="cart-heading">Cart</span>
						<span id="cart-total">${cartitemcount }</span>
					</button>
					<ul class="dropdown-menu pull-right header-cart-toggle">
						<li>
							<table class="table table-striped">
								<tbody>
									<tr>
										<td class="text-center">Image</td>
										<td class="text-right qty">Quantity</td>
										<td class="text-left prd-name">Item Name<br> &amp;
											Availability
										</td>
										<td class="text-right product-price">Rate</td>
										<td class="text-right product-price">Amount</td>

									</tr>
									<c:forEach items="${cartitemlist}" var="cartitemlist">
										<tr>
											<td class="text-center"><a href="#"><img
													src="${pageContext.request.contextPath}/resources/admin/img/item_images/${cartitemlist.image}"
													alt=" aspetur autodit autfugit"
													title=" aspetur autodit autfugit" class="image_thumb"
													height="48" width="55"></a></td>
											<td class="text-right qty">X ${cartitemlist.quantity}</td>
											<td class="text-left prd-name">${cartitemlist.name}<br>${cartitemlist.availability }</td>
											<td class="text-right product-price">&#x20b9;${cartitemlist.offerprice }</td>
											<td class="text-right product-price">&#x20b9;${cartitemlist.offerprice * cartitemlist.quantity}</td>
											<td class="text-center"><a type="button" title="Remove"
												href="delcartitem/${cartitemlist.cart_id}"
												class="btn btn-danger btn-xs"> <i class="fa fa-times"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</li>
						<li>

							<p class="text-right">
								<a href="/springproject/customer/cart"><strong><i
										class="fa fa-shopping-cart"></i> View Cart</strong></a>
							</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="header-right-cms">
				<aside id="header-right" class="">
					<div class="html-content">
						<div class="box-content">
							<div id="ttcmsheaderservices" class="col-xs-12 col-sm-6 col-lg-2">
								<div class="ttcmsheaderservice col-xs-12 col-sm-12">
									<div class="ttsupport">
										<div class="ttcontent_inner">
											<div class="service">

												<div class="service-content">
													<div class="service-title">Customer Support</div>
													<div class="service-desc">
														<a href="mailto:getit.858889@gmail.com">getit.858889@gmail.com</a>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</aside>
			</div>
			<div class="col-sm-7 header-middle">
				<div id="header-search" class="input-group">
					<input type="text" name="search" value="" placeholder="Search"
						class="form-control input-lg"> <select name="category_id"
						class="form-control innner-search">
						<option value="0">Categories</option>
						<option value="20">Grocery</option>
						<option value="25">Bread &amp; dairy</option>
						<option value="60">Fruits</option>
						<option value="73">Beverages</option>
						<option value="74">Sweets</option>
						<option value="75">Packed Snack</option>
					</select> <span class="input-group-btn">
						<button type="button"
							class="btn btn-default btn-lg header-search-btn">
							<i class="fa fa-search"></i> Search
						</button>
					</span>
				</div>

			</div>

		</div>
	</div>
</header>
