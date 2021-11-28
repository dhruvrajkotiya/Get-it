
<%
	if (session.getAttribute("customer") == null) {
		response.sendRedirect("login");
	} else {
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
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
<link
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/sidescrollbar.css"
	rel="stylesheet" type="text/css">

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
<body class="common-home">
	<div id="page">
		<jsp:include page="control/header.jsp"></jsp:include>

		<div class="container product-product">
			<ul class="breadcrumb">
				<li><a href="index.php-2.html?route=common/home"><i
						class="fa fa-home"></i></a></li>
				<li><a
					href="index.php-38.html?route=product/product&amp;product_id=49">
						aspetur autodit autfugit</a></li>
			</ul>
			<div class="row"><jsp:include page="control/sidemenu.jsp"></jsp:include>
				<div id="content" class="col-sm-9">

					<form
						action="https://demo.templatetrip.com/Opencart/OPC02/OPC040/OPC05/index.php?route=affiliate/register"
						method="post" enctype="multipart/form-data"
						class="form-horizontal">
						<fieldset>
							<legend>Your Personal Details</legend>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-firstname">Name</label>
								<div class="col-sm-10">
									<input type="text" name="firstname" value="${customer.name }"
										placeholder="First Name" id="input-firstname"
										class="form-control">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-email">E-Mail</label>
								<div class="col-sm-10">
									<input type="text" name="email" value="${customer.email }" placeholder="E-Mail"
										id="input-email" class="form-control">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-password">Password</label>
								<div class="col-sm-10">
									<input type="password" name="password" value="${customer.password }"
										placeholder="Password" id="input-password"
										class="form-control">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-confirm">Password
									Confirm</label>
								<div class="col-sm-10">
									<input type="password" name="confirm" value=""
										placeholder="Password Confirm" id="input-confirm"
										class="form-control">
								</div>
							</div>

							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-telephone">Address</label>
								<div class="col-sm-10">
									<input type="text" name="address" value="${customer.address }"
										placeholder="Address" id="input-telephone"
										class="form-control">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-fax">Contact
									Number</label>
								<div class="col-sm-10">
									<input type="text" name="contact" value="${customer.contact }"
										placeholder="Mobile Number" id="input-fax"
										class="form-control">
								</div>
							</div>
						</fieldset>
						<div class="buttons clearfix">
							<div class="pull-right">
								<input type="submit" value="Submit" class="btn btn-primary">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="control/footer.jsp"></jsp:include>

</body>
</html>
<%
	}
%>