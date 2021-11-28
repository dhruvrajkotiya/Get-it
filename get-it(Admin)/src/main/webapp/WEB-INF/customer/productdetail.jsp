
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
<body class="common-home">
	<div id="page">
		<jsp:include page="control/header.jsp"></jsp:include>

		<div class="container product-product">
			<ul class="breadcrumb">
				<li><a href="index.php-2.html?route=common/home"><i
						class="fa fa-home"></i></a></li>
				<li><a
					href="index.php-38.html?route=product/product&amp;product_id=49">
						${productdetail.name }</a></li>
			</ul>
			<br>
			<div class="row"><jsp:include page="control/sidemenu.jsp"></jsp:include>
				<div id="content" class="col-sm-9">
					<h1 class="page-title">${productdetail.name }</h1>
					<!-- Product row START -->
					<div class="row">

						<div class="product-block">
							<div class="col-sm-5 product-images col-xs-12 col-md-6">
								<!-- Product Image thumbnails START -->
								<div class="thumbnails">
									<div class="product-image">
										<a class="thumbnail" title=" aspetur autodit autfugit"><img
											src="${pageContext.request.contextPath}/resources/admin/img/item_images/${productdetail.image}"
											title=" aspetur autodit autfugit"
											alt=" aspetur autodit autfugit"></a>
									</div>
									<div class="additional-images-container">
										<div class="additional-images">
											<div class="image-additional">
												<a class="thumbnail"
													href="${pageContext.request.contextPath}/resources/admin/img/item_images/${productdetail.image}"
													title=" aspetur autodit autfugit"> <img
													src="${pageContext.request.contextPath}/resources/admin/img/item_images/${productdetail.image}"
													title=" aspetur autodit autfugit"
													alt=" aspetur autodit autfugit"></a>
											</div>
										</div>
									</div>
								</div>

								<!-- Product Image thumbnails END -->
							</div>

							<script type="text/javascript">
								$(".additional-images").owlCarousel({
									items : 3,
									itemsDesktop : [ 1200, 2 ],
									itemsDesktopSmall : [ 991, 1 ],
									itemsTablet : [ 767, 3 ],
									itemsMobile : [ 480, 2 ],
									autoPlay : false,
									navigation : true,
									pagination : false
								});

								// Custom Navigation Events
								$(".additional-next").click(
										function() {
											$(".additional-images").trigger(
													'owl.next');
										})
								$(".additional-prev").click(
										function() {
											$(".additional-images").trigger(
													'owl.prev');
										})
								$(
										".additional-images-container .customNavigation")
										.addClass('owl-navigation');
							</script>

							<div class="col-sm-7 product-details col-xs-12 col-md-6">
								<h1 class="product-name">${productdetail.name }</h1>
								<table class="product-info">
									<tr>
										<td>Product Code:</td>
										<td class="product-info-value"># ${productdetail.item_id }</td>
									</tr>
									<tr>
										<td>Availability:</td>
										<td class="product-info-value">${productdetail.availability }</td>
									</tr>
									<tr>
										<td>Brand</td>
										<td class="product-info-value">${productdetail.brand }</td>
									</tr>
								</table>

								<ul class="list-unstyled product-price">
									<li>
										<h2>Offer Price : &#x20b9; ${productdetail.offerprice }</h2>
										<h4>
											MRP : &#x20b9; <i class="price-old">${productdetail.price }</i>
										</h4>
									</li>
								</ul>

								<!-- Product Options START -->
								<form action="addtocart" method="post">
									<input type="hidden" value="${customer.cust_id }"
										name="cust_id"> <input type="hidden"
										value="${productdetail.item_id }" name="item_id"> <input
										type="hidden" value="${productdetail.sk_id }" name="shop_id">
									<div id="product" class="product-options">
										<div class="form-group product-quantity">
											<label class="control-label" for="input-quantity">Qty</label>
											<input type="text" name="quantity" value="1" size="2"
												id="input-quantity" class="form-control">
											<button class="btn btn-primary btn-lg product-btn-cart"
												type="submit" id="button-cart">Add to Cart</button>
										</div>
									</div>
								</form>
								<!-- Product Options END -->

								<!-- Product Wishlist Compare START -->
								<form action="addtowishlist" method="post">
									<input type="hidden" value="${customer.cust_id }"
										name="cust_id"> <input type="hidden"
										value="${productdetail.item_id }" name="item_id"> <input
										type="hidden" value="${productdetail.sk_id }" name="shop_id">
									<div class="btn-group">
										<button class="btn btn-default product-btn-wishlist"
											type="submit" title="Add to Wish List">
											<i class="fa fa-heart"></i> Add to Wish List
										</button>
									</div>
								</form>
								<!-- Product Wishlist Compare END -->



								<script type="text/javascript"
									src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
								<!-- AddThis Button END -->
							</div>
							<!-- Product option details END -->

						</div>

						<!-- Product nav Tabs START -->
						<div class="col-sm-12 product-tabs">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab-description"
									data-toggle="tab">Description</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab-description">
									<p>${productdetail.description }</p>
								</div>
							</div>
						</div>
						<!-- Product nav Tabs END -->

						<!-- Related products START -->
						<div class="related-carousel products-list col-sm-12">
							<div class="box-heading">
								<h3>More Items</h3>
							</div>
							<div class="related-items products-carousel row">
								<c:forEach items="${ Itemlist}" var="Itemlist">
											<div class="product-layouts">
												<div class="product-thumb transition">
													<div class="image">
														<a href="shop/${Itemlist.sk_id }"> <img
															class="image_thumb"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${Itemlist.image}"
															alt="voluptas sit aspernatur"> <img
															class="image_thumb_swap"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${Itemlist.image}"
															alt="voluptas sit aspernatur">
														</a>

														<div class="sale-icon">Sale</div>
													</div>
													<div class="thumb-description">
														<div class="caption">
															<h4>
																<a href="shop/${Itemlist.sk_id }">${Itemlist.name }</a>
															</h4>
															<h4>${Itemlist.brand }</h4>

															<h4>${Itemlist.availability }</h4>
														</div>
														<br>
														<div class="button-wrapper">
															<div class="price">
																<span class="price-new"> &#x20b9;
																	${Itemlist.offerprice }</span> <span class="price-old">
																	&#x20b9; ${Itemlist.price } </span>
															</div>
														</div>
													</div>
												</div>
											</div>
									</c:forEach>
							</div>

						</div>
						<!--
<script type="text/javascript">
	/*$( ".product-thumb" ).wrap("<div class='col-lg-3 col-md-3 col-sm-6 col-xs-6 thumb-items' />");*/
</script>
-->

						<!-- Related products END -->
					</div>
					<!-- Product row END -->



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