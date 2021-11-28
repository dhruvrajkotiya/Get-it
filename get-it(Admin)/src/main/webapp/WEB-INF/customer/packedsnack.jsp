
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
						aspetur autodit autfugit</a></li>
			</ul>
			<div class="row"><jsp:include page="control/sidemenu.jsp"></jsp:include>
				<div id="content" class="col-sm-9">
					<div class="category-filter">
						<!-- Grid-List Buttons -->
						<div class="col-md-2 filter-grid-list">
							<div class="btn-group">
								<button type="button" id="grid-view" class="btn btn-default"
									data-toggle="tooltip" title="Grid">
									<i class="fa fa-th"></i>
								</button>
								<button type="button" id="list-view" class="btn btn-default"
									data-toggle="tooltip" title="List">
									<i class="fa fa-th-list"></i>
								</button>
							</div>
						</div>
						<!-- Show Products Selection -->
					</div>
					<!-- Category filter END -->

					<!-- Category products START -->
					<div class="category-products">
						<div class="row">
							<c:forEach items="${ ItemByGrocery}" var="ItemByGrocery">
								<div class="product-layout product-list col-xs-12">
									<div class="product-thumb">
										<div class="image">
											<a href="shop/${ItemByGrocery.sk_id }"> <img
												class="image_thumb"
												src="${pageContext.request.contextPath}/resources/admin/img/item_images/${ItemByGrocery.image}"
												title="aliquam quaerat voluptatem"
												alt="aliquam quaerat voluptatem"> <img
												class="image_thumb_swap"
												src="${pageContext.request.contextPath}/resources/admin/img/item_images/${ItemByGrocery.image}"
												title="aliquam quaerat voluptatem"
												alt="aliquam quaerat voluptatem">
											</a>


										</div>
										<div class="thumb-description">
											<div class="caption">
												<h4 style="padding-bottom: 0px;">
													<a href="shop/${ItemByGrocery.sk_id }"><b>Item Name
															: </b>${ItemByGrocery.name}</a>
												</h4>
												<p class="description" style="margin-bottom: 0px;">
													<b style="color: black;">Item Brand : </b>${ItemByGrocery.brand}</p>
												<p class="description" style="margin-bottom: 0px;">
													<b style="color: black;">Item Availability : </b>${ItemByGrocery.availability}</p>
												<p class="description">
													<b style="color: black;">Item Type : </b>${ItemByGrocery.itemtype}</p>
												<p class="description">
													<b style="color: black;">Item Description : </b><br>${ItemByGrocery.description}</p>
											</div>
											<div class="button-wrapper">
												<div class="price">
													&#x20b9; ${ItemByGrocery.offerprice } <i class="price-old">MRP
														:&#x20b9; ${ItemByGrocery.price }</i>
												</div>
												<div class="button-group">
													<a href="shop/productdetail/${ItemByGrocery.item_id}"
														class="btn"
														style="background: black; color: white; border-radius: 7px;"
														role="button">Item Description</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<!-- Category products END -->


					<!-- Category pagination START -->
					<div class="category-pagination">
						<div class="col-xs-6 text-left">Showing 1 to 1 of 1 (1
							Pages)</div>
						<div class="col-xs-6 text-right"></div>
					</div>
					<!-- Category pagination END -->


				</div>
			</div>
		</div>
	</div>






	<script type="text/javascript">
		// Carousel Counter
		colsCarousel = $('#column-right, #column-left').length;
		if (colsCarousel == 2) {
			ci = 4;
		} else if (colsCarousel == 1) {
			ci = 4;
		} else {
			ci = 4;
		}
		$(".related-items").owlCarousel({
			items : ci,
			itemsDesktop : [ 1200, 3 ],
			itemsDesktopSmall : [ 991, 3 ],
			itemsTablet : [ 767, 2 ],
			itemsMobile : [ 480, 1 ],
			navigation : true,
			pagination : false
		});
	</script>

	<script type="text/javascript">
	<!--
		$('select[name=\'recurring_id\'], input[name="quantity"]')
				.change(
						function() {
							$
									.ajax({
										url : 'index.php?route=product/product/getRecurringDescription',
										type : 'post',
										data : $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
										dataType : 'json',
										beforeSend : function() {
											$('#recurring-description')
													.html('');
										},
										success : function(json) {
											$('.alert, .text-danger').remove();

											if (json['success']) {
												$('#recurring-description')
														.html(json['success']);
											}
										}
									});
						});
	//-->
	</script>
	<script type="text/javascript">
	<!--
		$('#button-cart')
				.on(
						'click',
						function() {
							$
									.ajax({
										url : 'index.php?route=checkout/cart/add',
										type : 'post',
										data : $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
										dataType : 'json',
										beforeSend : function() {
											$('#button-cart').button('loading');
										},
										complete : function() {
											$('#button-cart').button('reset');
										},
										success : function(json) {
											$('.alert, .text-danger').remove();
											$('.form-group').removeClass(
													'has-error');

											if (json['error']) {
												if (json['error']['option']) {
													for (i in json['error']['option']) {
														var element = $('#input-option'
																+ i.replace(
																		'_',
																		'-'));

														if (element
																.parent()
																.hasClass(
																		'input-group')) {
															element
																	.parent()
																	.after(
																			'<div class="text-danger">'
																					+ json['error']['option'][i]
																					+ '</div>');
														} else {
															element
																	.after('<div class="text-danger">'
																			+ json['error']['option'][i]
																			+ '</div>');
														}
													}
												}

												if (json['error']['recurring']) {
													$(
															'select[name=\'recurring_id\']')
															.after(
																	'<div class="text-danger">'
																			+ json['error']['recurring']
																			+ '</div>');
												}

												// Highlight any found errors
												$('.text-danger').parent()
														.addClass('has-error');
											}

											if (json['success']) {
												$('#content')
														.parent()
														.before(
																'<div class="alert alert-success"><i class="fa fa-check-circle"></i> '
																		+ json['success']
																		+ '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

												$('#cart > button')
														.html(
																'<i class="fa fa-shopping-cart"></i> <span class="cart-heading">Cart</span><span id="cart-total" class="">'
																		+ json['total']
																		+ '</span>');

												$('html, body').animate({
													scrollTop : 0
												}, 'slow');

												$('#cart > ul')
														.load(
																'index.php?route=common/cart/info ul li');
											}
										},
										error : function(xhr, ajaxOptions,
												thrownError) {
											alert(thrownError + "\r\n"
													+ xhr.statusText + "\r\n"
													+ xhr.responseText);
										}
									});
						});
	//-->
	</script>
	<script type="text/javascript">
	<!--
		$('.date').datetimepicker({
			pickTime : false
		});

		$('.datetime').datetimepicker({
			pickDate : true,
			pickTime : true
		});

		$('.time').datetimepicker({
			pickDate : false
		});

		$('button[id^=\'button-upload\']')
				.on(
						'click',
						function() {
							var node = this;

							$('#form-upload').remove();

							$('body')
									.prepend(
											'<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

							$('#form-upload input[name=\'file\']').trigger(
									'click');

							if (typeof timer != 'undefined') {
								clearInterval(timer);
							}

							timer = setInterval(
									function() {
										if ($(
												'#form-upload input[name=\'file\']')
												.val() != '') {
											clearInterval(timer);

											$
													.ajax({
														url : 'index.php?route=tool/upload',
														type : 'post',
														dataType : 'json',
														data : new FormData(
																$('#form-upload')[0]),
														cache : false,
														contentType : false,
														processData : false,
														beforeSend : function() {
															$(node).button(
																	'loading');
														},
														complete : function() {
															$(node).button(
																	'reset');
														},
														success : function(json) {
															$('.text-danger')
																	.remove();

															if (json['error']) {
																$(node)
																		.parent()
																		.find(
																				'input')
																		.after(
																				'<div class="text-danger">'
																						+ json['error']
																						+ '</div>');
															}

															if (json['success']) {
																alert(json['success']);

																$(node)
																		.parent()
																		.find(
																				'input')
																		.attr(
																				'value',
																				json['code']);
															}
														},
														error : function(xhr,
																ajaxOptions,
																thrownError) {
															alert(thrownError
																	+ "\r\n"
																	+ xhr.statusText
																	+ "\r\n"
																	+ xhr.responseText);
														}
													});
										}
									}, 500);
						});
	//-->
	</script>
	<script type="text/javascript">
	<!--
		$('#review').delegate('.pagination a', 'click', function(e) {
			e.preventDefault();

			$('#review').fadeOut('slow');

			$('#review').load(this.href);

			$('#review').fadeIn('slow');
		});

		$('#review').load(
				'index.php?route=product/product/review&product_id=49');

		$('#button-review')
				.on(
						'click',
						function() {
							$
									.ajax({
										url : 'index.php?route=product/product/write&product_id=49',
										type : 'post',
										dataType : 'json',
										data : $("#form-review").serialize(),
										beforeSend : function() {
											$('#button-review').button(
													'loading');
										},
										complete : function() {
											$('#button-review').button('reset');

										},
										success : function(json) {
											$('.alert-success, .alert-danger')
													.remove();

											if (json['error']) {
												$('#review').after(
														'<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> '
																+ json['error']
																+ '</div>');
											}

											if (json['success']) {
												$('#review')
														.after(
																'<div class="alert alert-success"><i class="fa fa-check-circle"></i> '
																		+ json['success']
																		+ '</div>');

												$('input[name=\'name\']').val(
														'');
												$('textarea[name=\'text\']')
														.val('');
												$(
														'input[name=\'rating\']:checked')
														.prop('checked', false);
											}
										}
									});
						});

		$(document).ready(function() {
			$('.thumbnails').magnificPopup({
				type : 'image',
				delegate : 'a',
				gallery : {
					enabled : true
				}
			});
			$(".product-write-review").click(function() {
				$('html, body').animate({
					scrollTop : $(".product-tabs").offset().top
				}, 2000);
			});

			$(".product-total-review").click(function() {
				$('html, body').animate({
					scrollTop : $(".product-tabs").offset().top
				}, 2000);
			});
		});
	//-->
	</script>

	<jsp:include page="control/footer.jsp"></jsp:include>

</body>
</html>
<%
	}
%>