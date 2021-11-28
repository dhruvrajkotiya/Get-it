<%
   if(session.getAttribute("admin")==null)
   {
	   response.sendRedirect("login");
   }
   else{
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin | Admin List</title>


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

function del(url){
	alert(url);
	window.location=url;
}

 function loaddata(id,name,email,password,address,contact)
   {
	   
	   document.f1.id.value=id;
	   document.f1.name.value=name;
	   document.f1.email.value=email;
	   document.f1.password.value=password;
	   document.f1.address.value=address;
	   document.f1.contact.value=contact;
		   
   }
 var check = function() {
		if (document.getElementById('password').value == document
				.getElementById('confirm_password').value) {
			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'Password Matched';
			document.getElementById("Button").disabled = false;
		} else {
			document.getElementById('message').style.color = 'red';
			document.getElementById('message').innerHTML = 'Password and Confirm password must be same';
			document.getElementById("Button").disabled = true;
		}
	}

	function showpassword() {
		var x = document.getElementById("password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
	function showconfirmpassword() {
		var x = document.getElementById("confirm_password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
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
						<li class="breadcrumb-item"><a href="dashboard"
							class="text-muted">Dashboard</a></li>
						<li class="breadcrumb-item active text-" aria-current="page">
							Admin List</li>
					</ol>

					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4>Admin List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table
											class="table table-bordered mb-0 text-nowrap text-center">
											<tr class="bg-primary">
												<th>#</th>
												<th>Name</th>
												<th>Email</th>
												<th>Address</th>
												<th>Contact</th>
												<th>Action</th>
											</tr>
											<c:forEach items="${ list}" var="list">
												<tr>
													<td>${list.admin_id}</td>
													<td>${list.name}</td>
													<td>${list.email}</td>
													<td>${list.address}</td>
													<td>${list.contact}</td>
													<td><div class="btn-group align-top">
															<button class="btn btn-sm btn-primary badge"
																data-target="#editadmin" data-toggle="modal"
																type="button"
																onclick="loaddata(${list.admin_id},'${list.name}','${list.email}','${list.password}','${list.address}','${list.contact}');">Edit</button>
															<button class="btn btn-sm btn-primary badge"
																type="button"
																onclick="del('deladmin?id=${list.admin_id}')">
																<i class="fa fa-trash"></i>
															</button>
														</div></td>
												</tr>
											</c:forEach>
										</table>
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
	<!-- Large Modal -->
	<div id="editadmin" class="modal fade">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content ">
				<div class="modal-header pd-x-20">
					<h6 class="modal-title">Message Preview</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body pd-20">
					<form class="form-horizontal" name="f1" method="post"
						action="update">
						<input type="hidden" value="" name="id">
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter your name here..." id="name" name="name"
									required="required" pattern="[a-zA-Z]{3,30}"
									title="Name only consist of alphabet. minimum name length 3 maximum name length 30">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label" for="example-email">Email</label>
							<div class="col-md-9">
								<input type="email" id="email" name="email" class="form-control"
									placeholder="Enter your email here..." required="required"
									pattern="[a-zA-Z0-9_]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="password"
									id="password" placeholder="Create Password" required="required"
									onkeyup='check();'
									pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
									title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15.">
								<input type="checkbox" onclick="showpassword()"> Show
								Password
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Confirm Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control"
									name="confirmpassword" id="confirm_password" onkeyup='check();'
									placeholder="Confirm Password" required="required"
									pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,15}$"
									title="Password must consist of small alphabet,capital alphabet,numbers,one special character
													minimum length 8 maximum length 15.">
								<input type="checkbox" onclick="showconfirmpassword()">
								Show Password<br> <span id='message'></span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Address</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="6"
									placeholder="Enter your address here..." name="address"
									id="address" required="required" maxlength="70" minlength="5"
									title="Address minimum length 5 maximum length 70."></textarea>
							</div>
						</div>
						<div class="form-group row mb-0">
							<label class="col-md-2 col-form-label">Contact Number</label>
							<div class="col-md-9">
								<input class="form-control" type="text" name="contact"
									id="contact" placeholder="Enter your active contact number..."
									required="required" pattern="[5-9]{1}[0-9]{9}$"
									title="Contact Number must contain 10 character">
							</div>
						</div>

						<div class="form-group row float-right" style="margin-right: 65px;">
							<button type="submit"
								class="btn btn-primary btn-right m-b-5 m-t-20" id="Button"
								onclick="myFunction()" style="margin-right: 10px;">Submit</button>
							<button type="button"
								class="btn btn-success btn-right m-b-5 m-t-20"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- modal-dialog -->
	</div>
	<!-- modal -->
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