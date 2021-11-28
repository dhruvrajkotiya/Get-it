
<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("login");
	} else {
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin | Dashboard</title>

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
								class="text-white app-sidebar__user-name mt-5">Admin
									Panel</span><br>
						</span>
						</a>
					</div>
				</div>
				<ul class="side-menu">
					<li><a class="side-menu__item" href="dashboard"><i
							class="side-menu__icon fa fa-desktop"></i><span
							class="side-menu__label">Dashboard</span></a></li>
					<li class="slide"><a class="side-menu__item"
						data-toggle="slide" href="#"><i
							class="side-menu__icon fa fa-user-circle-o"></i><span
							class="side-menu__label">Manage Admin</span><i
							class="angle fa fa-angle-right"></i></a>
						<ul class="slide-menu">
							<li><a class="slide-item" href="adminlist"><span>Admin
										List</span></a></li>
							<li><a class="slide-item" href="addadmin"><span>Add
										Admin</span></a></li>
						</ul></li>

					<li class="slide"><a class="side-menu__item"
						data-toggle="slide" href="#"><i
							class="side-menu__icon fa fa-motorcycle"></i><span
							class="side-menu__label">Manage Employees</span><i
							class="angle fa fa-angle-right"></i></a>
						<ul class="slide-menu">
							<li><a href="employeelist" class="slide-item">Employee
									List</a></li>
							<li><a href="addemployee" class="slide-item">Add
									Employees</a></li>
						</ul></li>
					<li class="slide"><a class="side-menu__item"
						data-toggle="slide" href="#"><i
							class="side-menu__icon fa fa-users"></i><span
							class="side-menu__label">Manage Users</span><i
							class="angle fa fa-angle-right"></i></a>
						<ul class="slide-menu">
							<li><a href="userlist" class="slide-item">Users List</a></li>
							<li><a href="adduser" class="slide-item">Add Users</a></li>
						</ul></li>
					<li class="slide"><a class="side-menu__item"
						data-toggle="slide" href="#"><i
							class="side-menu__icon fa fa-user"></i><span
							class="side-menu__label">Manage Shopkeeper</span><i
							class="angle fa fa-angle-right"></i></a>
						<ul class="slide-menu">
							<li><a href="shopkeeperlist" class="slide-item">Shopkeeper
									List</a></li>
							<li><a href="addshopkeeper" class="slide-item">Add
									Shopkeeper</a></li>
						</ul></li>
					<li><a class="side-menu__item" href="notifications"><i
							class="side-menu__icon fa fa-bell"></i><span
							class="side-menu__label">Notifications</span></a></li>
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

						<li class="breadcrumb-item active text-" aria-current="page">Dashboard</li>
					</ol>

					<div class="row">
						<div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">

							<div class="card" data-toggle="tooltip" data-placement="bottom"
								title="Total Active Admin ${admincount}">
								<div class="card-body text-center">
									<h5>Total Admin</h5>
									<div class="text-center">
										<div class="mb-3 mt-1">
											<a href="adminlist"> <i class="fa fa-user-circle-o fa-4x"></i></a>
										</div>
										<h3 class="mb-2 text-dark">${admincount}</h3>
										<span class="text-green"><i
											class="fa fa-arrow-up text-success"> </i>23% increase</span><small>
											last week</small>
									</div>
								</div>
							</div>

						</div>

						<div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
							<div class="card" data-toggle="tooltip" data-placement="bottom"
								title="Total Active Employee ${employeecount}">
								<div class="card-body text-center">
									<h5>Total Employees</h5>

									<div class="text-center">
										<div class="mb-3 mt-1">
											<a href="employeelist"> <i class="fa fa-motorcycle fa-4x"></i></a>
										</div>
										<h3 class="mb-2 text-dark">${employeecount}</h3>
										<span class="text-green"><i
											class="fa fa-arrow-down text-danger"> </i>10% increase</span><small>
											last week</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
							<div class="card" data-toggle="tooltip" data-placement="bottom"
								title="Total Active User ${usercount}">
								<div class="card-body text-center">
									<h5>Total Users</h5>

									<div class="text-center">
										<div class="mb-3 mt-1">
											<a href="userlist"> <i class="fa fa-users fa-4x"></i></a>
										</div>
										<h3 class="mb-2 text-dark">${usercount}</h3>
										<span class="text-green"><i
											class="fa fa-arrow-up text-success"> </i>23% increase</span><small>
											last week</small>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-xl-3 col-md-6 col-sm-6 col-12">
							<div class="card" data-toggle="tooltip" data-placement="bottom"
								title="Total Shopkeeper ${shopkeepercount}">
								<div class="card-body text-center">
									<h5>Total Shopkeepers</h5>

									<div class="text-center">
										<div class="mb-3 mt-1">
											<a href="shopkeeperlist"> <i class="fa fa-user fa-4x"></i></a>
										</div>
										<h3 class="mb-2 text-dark">${shopkeepercount}</h3>
										<span class=""><i class="fa fa-arrow-down text-danger">
										</i>3% decrease</span><small> last week</small>
									</div>
								</div>
							</div>
						</div>

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

	<!--Jquery.knob js-->
	<script
		src="<c:url value="/resources/admin/plugins/othercharts/jquery.knob.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/othercharts/jquery.sparkline.min.js"/>"></script>

	<!--Scripts js-->
	<script src="<c:url value="/resources/admin/js/scripts.js"/>"></script>

	<!--Dashboard js-->
	<script src="<c:url value="/resources/admin/js/dashboard.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/sparkline.js"/>"></script>
</body>
</html>

<%
	}
%>