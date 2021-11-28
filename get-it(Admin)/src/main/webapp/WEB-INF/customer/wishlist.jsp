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
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/sidescrollbar.css"
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
									<td class="text-center">Item Id</td>
									<td class="text-center">Image</td>
									<td class="text-center">Product Name</td>
									<td class="text-center">Brand</td>
									<td class="text-center">Unit Price</td>
									<td class="text-center">Remove From List</td>
								</tr>
							</thead>

							<c:forEach items="${ wishitemlist}" var="wishitemlist">
								<form action="editcartitem" method="post"
									enctype="multipart/form-data">
									<tbody>
										<tr style="background-color: white;">
											<td class="text-center">${ wishitemlist.item_id}</td>
											<td class="text-center"><a
												href="shop/productdetail/${wishitemlist.item_id}"><img
													src="${pageContext.request.contextPath}/resources/admin/img/item_images/${wishitemlist.image}"
													alt=" aspetur autodit autfugit"
													title=" aspetur autodit autfugit" class="img-thumbnail"
													height="100" width="100"></a></td>
											<td class="text-left" style="text-align: center;"><a
												href="${pageContext.request.contextPath}/resources/admin/img/item_images/${wishitemlist.image}">
													${wishitemlist.name }</a> <br> <small>${wishitemlist.availability }</small></td>
											<td class="text-left" style="text-align: center;">${wishitemlist.brand }</td>

											<td class="text-right chkprice"
												style="text-align: center; font-weight: bold;">&#x20b9;${wishitemlist.offerprice}
												&nbsp; <small class="price-old" style="text-align: center;">
													&#x20b9;${wishitemlist.offerprice}</small>
											</td>
											<td class="text-center"><a type="button"
												data-toggle="tooltip"
												href="delwishitem/${ wishitemlist.wish_id}"
												class="btn btn-danger" data-original-title="Remove"> <i
													class="fa fa-times-circle"></i>
											</a></td>
										</tr>
									</tbody>
								</form>
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