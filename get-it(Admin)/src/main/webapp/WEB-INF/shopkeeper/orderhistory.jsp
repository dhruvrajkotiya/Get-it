
<%
	if (session.getAttribute("shopkeeper") == null) {
		response.sendRedirect("login");
	} else {
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from spruko.com/demo/kharna/html/Kharna_Admin-image-dark/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Jan 2020 06:27:11 GMT -->
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin | Notifications</title>


<!--Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/admin/img/favicon.ico"
	type="image/x-icon" />

<!--Bootstrap.min css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/bootstrap/css/bootstrap.min.css">

<!--Icons css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/icons.css">

<!--Style css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/style.css">

<!--mCustomScrollbar css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/scroll-bar/jquery.mCustomScrollbar.css">

<!--Sidemenu css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/toggle-menu/sidemenu.css">

<!--Chartist css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/chartist/chartist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/chartist/chartist-plugin-tooltip.css">

<!--Full calendar css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/fullcalendar/stylesheet1.css">

<!--morris css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/plugins/morris/morris.css">

<script type="text/javascript">
	function del(url) {
		alert(url);
		window.location = url;
	}

	function loaddata(id, name, email, password, address, contact) {

		document.f1.id.value = id;
		document.f1.name.value = name;
		document.f1.email.value = email;
		document.f1.password.value = password;
		document.f1.address.value = address;
		document.f1.contact.value = contact;

	}
</script>

</head>

<body class="app ">

	<div id="spinner"></div>

	<div id="app">
		<div class="main-wrapper">

			<jsp:include page="control/header.jsp"></jsp:include>
			<aside class="app-sidebar">
				<div class="app-sidebar__user">
					<div class="dropdown">
						<a class="nav-link pl-2 pr-2 leading-none d-flex" href="dashboard">
							<span class="ml-2 d-lg-block"> <span
								class="text-white app-sidebar__user-name mt-5">Shopkeeper
									Panel</span><br>
						</span>
						</a>
					</div>
				</div>
				<ul class="side-menu">
					<li><a class="side-menu__item" href="dashboard"><i
							class="side-menu__icon fa fa-desktop"></i><span
							class="side-menu__label">Dashboard</span></a></li>
					<li><a class="side-menu__item" href="offers"><i
							class="side-menu__icon fa fa-gift"></i><span
							class="side-menu__label">Offers</span></a></li>
					<li><a class="side-menu__item" href="notifications"><i
							class="side-menu__icon fa fa-bell"></i><span
							class="side-menu__label">Notifications</span></a></li>
					<li><a class="side-menu__item" href="orderhistory"><i
							class="side-menu__icon fa fa-history"></i><span
							class="side-menu__label">Order History</span></a></li>
					<li><a class="side-menu__item" href="contactus"><i
							class="side-menu__icon fa fa-phone"></i><span
							class="side-menu__label">Contact Us</span></a></li>

					<li><a class="side-menu__item" href="aboutus"><i
							class="side-menu__icon fa fa-address-card"></i><span
							class="side-menu__label">About Us</span></a></li>
				</ul>
			</aside>

			<div class="app-content">
				<section class="section">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="dashboard"
							class="text-muted">Dashboard</a></li>
						<li class="breadcrumb-item active text-" aria-current="page">
							Order History</li>
					</ol>

					<div class="row">
						<c:forEach items="${ order}" var="order">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header" style="padding-bottom: 5px;">
										<h6>Order Id : # ${order.order_id}</h6>
									</div>
									<div class="card-body">
										<div class="col-lg-4" style="float: left;">
											Delivery Address <br> <br>${order.delivery_address }</div>
										<div class="col-lg-4" style="float: left;">
											Total Amount <br> <br>&#x20b9; ${order.total_amount }
										</div>
										<div class="col-lg-4" style="float: left;">
											<form action="orderhistorydetail" method="post">
												<input type="hidden" value="${order.order_id}"
													name="order_id"> <input class="btn btn-primary"
													type="submit" value="View order details">
											</form>
										</div>
									</div>

								</div>
							</div>
						</c:forEach>
					</div>
				</section>
			</div>

			<footer class="main-footer">
				<div class="text-center">
					<a href="aboutus"> Copyright &copy; Get-it</a>
				</div>
			</footer>

		</div>
	</div>

	<!--Jquery.min js-->
	<script src="<c:url value="/resources/admin/js/jquery.min.js"/>"></script>

	<!--popper js-->
	<script src="<c:url value="/resources/admin/js/popper.js"/>"></script>

	<!--Tooltip js-->
	<script src="<c:url value="/resources/admin/js/tooltip.js"/>"></script>

	<!--Bootstrap.min js-->
	<script
		src="<c:url value="/resources/admin/plugins/bootstrap/js/bootstrap.min.js"/>"></script>

	<!--Jquery.nicescroll.min js-->
	<script
		src="<c:url value="/resources/admin/plugins/nicescroll/jquery.nicescroll.min.js"/>"></script>

	<!--Scroll-up-bar.min js-->
	<script
		src="<c:url value="/resources/admin/plugins/scroll-up-bar/dist/scroll-up-bar.min.js"/>"></script>

	<!--Sidemenu js-->
	<script
		src="<c:url value="/resources/admin/plugins/toggle-menu/sidemenu.js"/>"></script>

	<!--mCustomScrollbar js-->
	<script
		src="<c:url value="/resources/admin/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"/>"></script>

	<!-- jQuery Sparklines -->
	<script
		src="<c:url value="/resources/admin/plugins/jquery-sparkline/dist/jquery.sparkline.js"/>"></script>

	<!-- ECharts -->
	<script
		src="<c:url value="/resources/admin/plugins/echarts/dist/echarts.js"/>"></script>

	<!--Jquery.knob js-->
	<script
		src="<c:url value="/resources/admin/plugins/othercharts/jquery.knob.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/othercharts/jquery.sparkline.min.js"/>"></script>

	<!--Morris js-->
	<script
		src="<c:url value="/resources/admin/plugins/morris/morris.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/morris/raphael.min.js"/>"></script>

	<!--Scripts js-->
	<script src="<c:url value="/resources/admin/js/scripts.js"/>"></script>

	<!--Dashboard js-->
	<script src="<c:url value="/resources/admin/js/dashboard.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/sparkline.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/apexcharts.js"/>"></script>
</body>
</html>
<%
	}
%>