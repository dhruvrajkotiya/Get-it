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
					<li><a
						href="https://demo.templatetrip.com/Opencart/OPC02/OPC040/OPC05/index.php?route=common/home"><i
							class="fa fa-home"></i></a></li>
					<li><a class="last-breadcrumb">Wish List</a></li>
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
									<td class="text-center">Order Id</td>
									<td class="text-center">Order details and Status</td>
								</tr>
							</thead>

							<c:forEach items="${ orderhistory}" var="orderhistory"> 
							<tbody>
								<tr style="background-color: white;">
									<td class="text-center">${orderhistory.order_id}</td>
									<td class="text-center"><form action="customerorderdetail"
											method="post">
											<input type="hidden" value="${orderhistory.order_id}" name="order_id"> <input type="submit"
												class="btn btn-primary" value="Check Order Details">
										</form></td>
								</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>
					<div class="buttons btn-checkout">
						<div class="pull-left">
							<a href="/springproject/customer/home" class="btn btn-default">Continue
								Shopping</a>
						</div>
						<!-- 	<div class="pull-right">
							<form action="wishtocart" method="post">
								<input class="btn btn-primary" type="submit" value="Add to cart">
							</form>
						</div>-->
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="control/footer.jsp"></jsp:include>

</body>
</html>