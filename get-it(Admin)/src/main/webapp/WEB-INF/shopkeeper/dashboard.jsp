
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from spruko.com/demo/kharna/html/Kharna_Admin-image-dark/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Jan 2020 06:27:11 GMT -->
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shopkeeper | Dashboard</title>

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
	function loaddata(item_id,name,brand,price,description,availability,itemtype,offerprice)
	   {
		   alert("Hello! I am an alert box!");
		   document.f1.item_id.value=item_id;
		   document.f1.name.value=name;
		   document.f1.brand.value=brand;
		   document.f1.price.value=price;
		   document.f1.offerprice.value=offerprice;
		   document.f1.description.value=description;
		   
		   
		   const selectItemType = document.f1.itemtype;
		   for (let i = 0; i < selectItemType.options.length; i++) 
		   {
		     
		 	  if( itemtype === selectItemType.options[i].value)
		     {
		     	// if the "value" is an possible option 
		       // this option is selected and the loop is aborted.
		       
		     	selectItemType.options[i].selected = true;
		       break;
		     }		
		       
		   }
		   const selectItemAvailability = document.f1.availability;
		   for (let i = 0; i < selectItemAvailability.options.length; i++) 
		   {
		     
		 	  if( itemtype === selectItemAvailability.options[i].value)
		     {
		     	// if the "value" is an possible option 
		       // this option is selected and the loop is aborted.
		       
		     	selectItemAvailability.options[i].selected = true;
		       break;
		     }		
		       
		   }
			   
	   }
</script>

<style type="text/css">
.divbtnplus {
	position: fixed;
	bottom: 7%;
	right: 5%;
	z-index: 1;
}

.btnplus {
	border-radius: 50%;
	border: 0px;
	color: white;
	width: 55px;
	height: 55px;
	width: 55px
}
</style>

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
						<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
					</ol>

					<div class="section-body ">
						<div class="row">
							<div class="col-md-12 col-lg-12 col-xl-12">
								<div class="row product-list">
									<c:forEach items="${ listitem}" var="listitem">
										<div class="col-lg-6 col-xl-3 col-md-6">
											<div class="card">
												<div class="pro-img-box">
													<img class="img-fluid"
														src="${pageContext.request.contextPath}/resources/admin/img/item_images/${listitem.image}"
														alt="">
													<div class="shop-details">
														<button class="adtocart"
															onclick="loaddata(${listitem.item_id},'${listitem.name}','${listitem.brand}','${listitem.price}','${listitem.description}','${listitem.availability}','${listitem.itemtype}',${listitem.offerprice});"
															data-toggle="modal" data-target="#edititem">
															<i class="fa fa-edit"></i>
														</button>

														<button type="submit" class="adtocart"
															onclick="del('delitem?id=${listitem.item_id}')">
															<i class="fa fa-trash"></i>
														</button>
													</div>
												</div>
												<div class="card-body text-center">
													<h4 class="pro-title">${listitem.name}</h4>
													<p class="price">
														&#x20b9; ${listitem.offerprice}
														<del style="font-size: 15px;">
															&#x20b9;${listitem.price}</del>
													</p>
													<p>${listitem.availability } | ${listitem.itemtype }</p>
												</div>
												<div id="accordion">
													<div class="accordion">
														<div class="accordion-header " data-toggle="collapse"
															data-target="#panel-body-2">
															<h4>Read more</h4>
														</div>
														<div class="accordion-body collapse border border-top-0"
															id="panel-body-2" data-parent="#accordion"><p>${listitem.description}</p>
															
													
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
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
	<div class="divbtnplus" title="Add item">
		<button class="btn btn-primary btnplus" type="button"
			data-toggle="modal" data-target="#additem">
			<i class="fa fa-plus"></i>
		</button>
	</div>
	<!-- Large Modal -->
	<div id="additem" class="modal fade">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content ">
				<div class="modal-header pd-x-20">
					<h6 class="modal-title">Message Preview</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" action="additem" enctype="multipart/form-data">
					<div class="modal-body pd-20">
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Name</label>
							<div class="col-md-9">
								<input type="hidden" value="${shopkeeper.sk_id}" name="sk_id">
								<input type="text" class="form-control"
									placeholder="Enter item name here..." name="name">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Type</label>
							<div class="col-md-9">
								<select class="btn btn-primary m-b-5 m-t-5" name="itemtype">
									<option value="" disabled selected>Item Type</option>
									<option value="Grocery">Grocery</option>
									<option value="Bread and Dairy">Bread and Dairy</option>
									<option value="Fruits">Fruits</option>
									<option value="Beverages">Beverages</option>
									<option value="Sweets">Sweets</option>
									<option value="Packed Snack">Packed Snack</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Brand</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item brand here..." name="brand">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Price</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item price here..." name="price">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Price with
								Discount</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item price here..." name="offerprice">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Image</label>
							<div class="col-md-9">
								<div class="form-group files color  mb-lg-0">
									<input type="file" class="file" class="form-control1"
										name="image" accept="image/*">
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Product
								Availability</label>
							<div class="col-md-9">
								<select class="btn btn-primary m-b-5 m-t-5" name="availability">
									<option value="" disabled selected>Product
										Availability</option>
									<option value="In Stock">In Stock</option>
									<option value="Out of Stock">Out of Stock</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Description</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3"
									placeholder="Enter item description here..." name="description"></textarea>
							</div>
						</div>
					</div>
					<button type="submit"
						class="btn btn-primary btn-right m-b-5 m-t-20" id="Button">Submit</button>
				</form>
				<!-- modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Add Item</button>
					<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
		<!-- modal-dialog -->
	</div>
	<!-- modal -->
	<!-- Edit Item Model Start -->
	<!-- Large Modal -->
	<div id="edititem" class="modal fade">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content ">
				<div class="modal-header pd-x-20">
					<h6 class="modal-title">Edit Item</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" action="edititem" enctype="multipart/form-data"
					name="f1">
					<div class="modal-body pd-20">
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Name</label>
							<div class="col-md-9">
								<input type="hidden" value="${shopkeeper.sk_id}" name="sk_id">
								<input type="hidden" id="item_id" name="item_id"> <input
									type="text" class="form-control"
									placeholder="Enter item name here..." name="name">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Type</label>
							<div class="col-md-9">
								<select class="btn btn-primary m-b-5 m-t-5" name="itemtype">
									<!-- <option value="" disabled selected>Item Type</option>-->
									<option value="Grocery">Grocery</option>
									<option value="Bread and Dairy">Bread and Dairy</option>
									<option value="Fruits">Fruits</option>
									<option value="Beverages">Beverages</option>
									<option value="Sweets">Sweets</option>
									<option value="Packed Snack">Packed Snack</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Brand</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item brand here..." name="brand">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Price</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item price here..." name="price">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Price with
								Discount</label>
							<div class="col-md-9">
								<input type="text" class="form-control"
									placeholder="Enter item price here..." name="offerprice">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Image</label>
							<div class="col-md-9">
								<div class="form-group files color  mb-lg-0">
									<input type="file" class="file" class="form-control1"
										name="image" accept="image/*">
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Product
								Availability</label>
							<div class="col-md-9">
								<select class="btn btn-primary m-b-5 m-t-5" name="availability">
									<!-- <option value="" disabled selected>Product
										Availability</option> -->
									<option value="In Stock">In Stock</option>
									<option value="Out of Stock">Out of Stock</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label">Item Description</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3"
									placeholder="Enter item description here..." name="description"
									id="description"></textarea>
							</div>
						</div>
					</div>
					<button type="submit"
						class="btn btn-primary btn-right m-b-5 m-t-20" id="Button">Submit</button>
				</form>
				<!-- modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Add Item</button>
					<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
		<!-- modal-dialog -->
	</div>
	<!-- modal -->
	<!-- Edit Item Model End -->
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
