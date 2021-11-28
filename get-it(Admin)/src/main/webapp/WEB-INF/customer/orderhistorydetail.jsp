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
					<c:forEach items="${ order_detail}" var="order_detail">
						<div class="table-responsive">
						<div style="background-color: white; padding: 3px; padding-left:10px; margin: 5px;">Order Id : # ${order_detail.order_id }</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<td class="text-center">Image</td>
										<td class="text-center">Product Name</td>
										<td class="text-center">Brand</td>
										<td class="text-center">Quantity</td>
										<td class="text-center">Unit Price</td>
										<td class="text-center">Total</td>
									</tr>
								</thead>

								<c:forEach items="${ itemlistcustomer}" var="itemlistcustomer">
									<tbody>
										<tr style="background-color: white;">
											<td class="text-center"><img
													src="${pageContext.request.contextPath}/resources/admin/img/item_images/${itemlistcustomer.image}"
													alt=" aspetur autodit autfugit"
													title=" aspetur autodit autfugit" class="img-thumbnail"
													height="100" width="100"></td>
											<td class="text-left" style="text-align: center;">${ itemlistcustomer.name}
												<br>
											</td>
											<td class="text-left" style="text-align: center;">${ itemlistcustomer.brand}
											</td>
											<td class="text-center"><div
													class="input-group btn-block" style="max-width: 200px;">${ itemlistcustomer.quantity}
												</div></td>
											<td class="text-right chkprice"
												style="text-align: center; font-weight: bold;">&#x20b9;${itemlistcustomer.offerprice}
												&nbsp; <small class="price-old" style="text-align: center;">
													&#x20b9;${itemlistcustomer.price}</small>
											</td>
											<td class="text-right chkprice"
												style="text-align: center; font-weight: bold; color: black;">&#x20b9;
												${itemlistcustomer.offerprice * itemlistcustomer.quantity}</td>
										</tr>
									</tbody>
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
												${order_detail.total_amount }</td>
										</tr>

										<tr>
											<td class="text-right heading-title"><strong>Delivery
													charge:</strong></td>
											<td class="text-right total-amount">+ &#x20b9; 0.00</td>
										</tr>
										<tr>
											<td class="text-right heading-title"><strong>Total:</strong></td>
											<td class="text-right total-amount">&#x20b9;
												${order_detail.total_amount }</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="buttons btn-checkout">
							<div class="pull-left">
								<a href="#" class="btn btn-default">Continue Shopping</a>
							</div>


						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="control/footer.jsp"></jsp:include>

</body>
</html>