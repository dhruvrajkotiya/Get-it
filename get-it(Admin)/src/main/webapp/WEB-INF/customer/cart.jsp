<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Get-it</title>
<!-- Removed by WebCopy -->
<!--<base href="">-->
<!-- Removed by WebCopy -->
<meta name="description" content="My Store">
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/jquery/jquery-2.1.1.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/bootstrap/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	type="text/css" media="all">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/javascript/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/TemplateTrip/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/stylesheet.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/TemplateTrip/ttblogstyle.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/TemplateTrip/lightbox.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.carousel.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.carousel.css"
	type="text/css" rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.transitions.css"
	type="text/css" rel="stylesheet" media="screen">


<script
	src="<c:url value="/resources/customer/catalog/view/javascript/bootstrap/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/common.js"/>"
	type="text/javascript"></script>
<!-- TemplateTrip custom Theme JS -->
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/TemplateTrip/addonScript.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/TemplateTrip/lightbox-2.6.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"/>"
	type="text/javascript"></script>
<link
	href="${pageContext.request.contextPath}/resources/customer/image/catalog/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/sidescrollbar.css"
	rel="stylesheet" type="text/css">
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"/>"
	type="text/javascript"></script>
</head>
<body class="checkout-cart">
	<div id="page">
		<jsp:include page="control/header.jsp"></jsp:include>
		<div class="page-title-wrapper">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a class="last-breadcrumb">Cart</a></li>
				</ul>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<jsp:include page="control/sidemenu.jsp"></jsp:include>
				<div id="content" class="col-sm-9">

					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<td class="text-center">Item Id</td>
									<td class="text-center">Image</td>
									<td class="text-left">Product Name</td>
									<td class="text-left">Brand</td>
									<td class="text-left">Quantity</td>
									<td class="text-right">Unit Price</td>
									<td class="text-right">Total</td>
								</tr>
							</thead>

							<c:forEach items="${ cartitemlist}" var="cartitemlist">
								<form action="editcartitem" method="post"
									enctype="multipart/form-data">
									<tbody>
										<tr style="background-color: white;">
											<input type="hidden" value="${ cartitemlist.cart_id}"
												name="cart_id">
											<input type="hidden" value="${ cartitemlist.cust_id}"
												name="cust_id">
											<input type="hidden" value="${ cartitemlist.item_id}"
												name="item_id">
											<td class="text-center">${ cartitemlist.item_id}</td>
											<td class="text-center"><a
												href="shop/productdetail/${cartitemlist.item_id}"><img
													src="${pageContext.request.contextPath}/resources/admin/img/item_images/${cartitemlist.image}"
													alt=" aspetur autodit autfugit"
													title=" aspetur autodit autfugit" class="img-thumbnail"
													height="100" width="100"></a></td>
											<td class="text-left" style="text-align: center;"><a
												href="${pageContext.request.contextPath}/resources/admin/img/item_images/${cartitemlist.image}">
													${cartitemlist.name }</a> <br> <small>${cartitemlist.availability }</small></td>
											<td class="text-left" style="text-align: center;">${cartitemlist.brand }</td>
											<td class="text-left"><div class="input-group btn-block"
													style="max-width: 200px;">

													<input type="text" name="quantity"
														value="${cartitemlist.quantity }" class="form-control"
														style="width: 50px;"> <span
														class="input-group-btn">

														<button type="submit" data-toggle="tooltip" title=""
															class="btn btn-primary" data-original-title="Update">
															<i class="fa fa-refresh"></i>
														</button> <a type="button" data-toggle="tooltip"
														href="delcartitem/${ cartitemlist.cart_id}"
														class="btn btn-danger" data-original-title="Remove"> <i
															class="fa fa-times-circle"></i>
													</a>
													</span>
												</div></td>
											<td class="text-right chkprice"
												style="text-align: center; font-weight: bold;">&#x20b9;${cartitemlist.offerprice}
												&nbsp; <small class="price-old" style="text-align: center;">
													&#x20b9;${cartitemlist.offerprice}</small>
											</td>
											<td class="text-right chkprice"
												style="text-align: center; font-weight: bold; color: black;">&#x20b9;
												${cartitemlist.offerprice * cartitemlist.quantity}</td>
										</tr>
									</tbody>
								</form>
							</c:forEach>

						</table>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<h2>What would you like to do next?</h2>
							<p>Choose if you have a discount code or reward points you
								want to use or would like to estimate your delivery cost.</p>
						</div>

						<div class="col-sm-4 sub-total-table">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right heading-title"><strong>Sub-Total:</strong></td>
										<td class="text-right total-amount">&#x20b9;
											${Total_amount }</td>
									</tr>

									<tr>
										<td class="text-right heading-title"><strong>Delivery
												charge:</strong></td>
										<td class="text-right total-amount">+ &#x20b9; 0.00</td>
									</tr>
									<tr>
										<td class="text-right heading-title"><strong>Total:</strong></td>
										<td class="text-right total-amount">&#x20b9;
											${Total_amount }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="buttons btn-checkout">
						<div class="pull-left">
							<a href="#" class="btn btn-default">Continue Shopping</a>
						</div>
						<div class="pull-right">
							<a class="btn btn-primary" data-toggle="collapse"
								data-target="#demo">Checkout</a>

						</div>

					</div>
					<div id="demo" class="row collapse"
						style="margin-top: 90px; padding: 20px;">
						<legend>Enter Delivery Address Details</legend>
						<form action="placeorder" method="post">
							<input type="hidden" name="total_amount"
								value="${Total_amount  }" class="form-control"
								style="margin-bottom: 10px;" required="required"> <input
								type="hidden" name="cust_id" value="${customer.cust_id  }"
								class="form-control" style="margin-bottom: 10px;"
								required="required"> <input type="hidden" name="shop_id"
								value="${shop_id }" class="form-control"
								style="margin-bottom: 10px;" required="required">
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">Payment
									Type</label>
								<div class="col-sm-8">
									<select name="payment_type" id="input-country"
										class="form-control" style="margin-bottom: 10px;"
										required="required">
										<option value="false" disabled="disabled" selected="selected">---
											Please Select ---</option>
										<option value="COD">COD (Cash On Delivery)</option>
									</select>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">House/Flat(Socity)
									Number</label>
								<div class="col-sm-8">
									<input type="text" name="house_number"
										placeholder="House/Flat(Socity) Number" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">House/Flat(Society)
									Name</label>
								<div class="col-sm-8">
									<input type="text" name="house_name"
										placeholder="House/Flat(Society) Name" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">Land
									Mark</label>
								<div class="col-sm-8">
									<input type="text" name="landmark" placeholder="Land Mark"
										id="input-firstname" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">Area
									Name</label>
								<div class="col-sm-8">
									<input type="text" name="area_name" placeholder="Area Name"
										id="input-firstname" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">City
									Name</label>
								<div class="col-sm-8">
									<input type="text" name="city_name" placeholder="City Name"
										id="input-firstname" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-4 control-label" for="input-firstname">Pin
									Code</label>
								<div class="col-sm-8">
									<input type="text" name="pin_code" placeholder="Pin Code"
										id="input-firstname" class="form-control"
										style="margin-bottom: 10px;" required="required">
								</div>
							</div>
							<div class="pull-right">
								<input type="submit" class="btn btn-primary" value="Place Order">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="control/footer.jsp"></jsp:include>

</body>
</html>