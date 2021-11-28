
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
	href="${pageContext.request.contextPath}/resources/customer/catalog/view/theme/OPC040_05/stylesheet/sidescrollbar.css"
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
<script
	src="<c:url value="/resources/customer/catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"/>"
	type="text/javascript"></script>
</head>
<body class="common-home">
	<div id="page">
		<jsp:include page="control/header.jsp"></jsp:include>

		<div class="container">
			<div class="row">

				<jsp:include page="control/sidemenu.jsp"></jsp:include>

				<div id="content" class="col-sm-9">
					<b style="color: #a94442;" class="col-sm-9"> ${error }${empty_cart }</b>
					<div class="slideshow-panel col-xs-8">
						<div class="ttloading-bg ttloader"></div>
						<div id="slideshow0" class="owl-carousel" style="opacity: 1;">
							<div class="item">
								<a href="home"><img
									src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/slider-01-605x430.jpg"
									alt="outt voluptatem" class="img-responsive"></a>
							</div>
							<div class="item">
								<a href="home"><img
									src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/slider-02-605x430.jpg"
									alt="suscipit libor" class="img-responsive"></a>
							</div>
						</div>
					</div>
					<script type="text/javascript">
					<!--
						$('#slideshow0')
								.owlCarousel(
										{
											items : 6,
											autoPlay : 6000,
											lazyLoad : true,
											singleItem : true,
											navigation : true,
											navigationText : [
													'<i class="fa fa-chevron-left fa-5x"></i>',
													'<i class="fa fa-chevron-right fa-5x"></i>' ],
											pagination : true
										});
						-->
					</script>
					<div class="html-content">
						<div class="box-content">
							<div id="ttcmsrightbanner" class="col-xs-4">
								<div class="ttrightbannerblock">
									<div class="ttrightbanner-row1 ttbanner">
										<div class="ttrightbanner1 ttrightbanner">
											<div class="ttrightbanner-img">
												<a href="home"><img
													src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/rightbanner-01.jpg"
													alt="rightbanner-01.jpg"></a>
											</div>
										</div>
										<div class="ttrightbanner2 ttrightbanner">
											<div class="ttrightbanner-img">
												<a href="home"><img
													src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/rightbanner-02.jpg"
													alt="rightbanner-02.jpg"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="html-content">
						<div class="box-content">
							<div id="ttcategory">
								<div class="ttcmscategory">
									<div class="ttcategory-main">
										<ul id="ttcategory-carousel" class="list-unstyled">
											<li class="ttcategory inner">
												<div class="tticon categoryimg1">
													<a href="grocery"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-01.jpg"
														alt="category-thumb-01"></a>
												</div>
												<div class="tt-title">Grocery</div>
											</li>
											<li class="ttcategory inner">
												<div class="tticon categoryimg2">
													<a href="breadanddairy"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-02.jpg"
														alt="category-thumb-02"></a>
												</div>
												<div class="tt-title">Bread &amp; Dairy</div>
											</li>
											<li class="ttcategory inner">
												<div class="tticon categoryimg3">
													<a href="fruits"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-03.jpg"
														alt="category-thumb-03"></a>
												</div>
												<div class="tt-title">fresh fruits</div>
											</li>
											<li class="ttcategory inner">
												<div class="tticon categoryimg4">
													<a href="beverages"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-04.jpg"
														alt="category-thumb-04"></a>
												</div>
												<div class="tt-title">Beverages</div>
											</li>
											<li class="ttcategory inner">
												<div class="tticon categoryimg5">
													<a href="sweets"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-05.jpg"
														alt="category-thumb-05"></a>
												</div>
												<div class="tt-title">Sweets</div>
											</li>
											<li class="ttcategory inner">
												<div class="tticon categoryimg6">
													<a href="packedsnack"><img
														src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/category-thumb-06.jpg"
														alt="c ategory-thumb-06"></a>
												</div>
												<div class="tt-title">Packed Snack</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="TTProduct-Tab TT-product-carousel products-list">
						<div class="tthometab">
							<div class="box-heading">
								<h3 class="tthometab-title">Trending Products</h3>
							</div>
							<div id="TTPTab-0" class="tab-box-heading">
								<ul class="nav nav-tabs">
									<li><a href="#tab-featured-0" data-toggle="tab">Featured</a></li>
									<li><a href="#tab-latest-0" data-toggle="tab">Latest</a></li>
								</ul>
							</div>
						</div>

						<div class="tab-content">
							<div id="tab-featured-0" class="tab-pane row">
								<div class="products-carousel">
									<c:forEach items="${ Itemlist}" var="Itemlist">
										<div class='single-column'>
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
										</div>
									</c:forEach>
								</div>
							</div>

							<div id="tab-latest-0" class="tab-pane row">
								<div class="products-carousel">
									<c:forEach items="${ latestItemlist}" var="latestItemlist">
										<div class='single-column'>
											<div class="product-layouts">
												<div class="product-thumb transition">
													<div class="image">
														<a href="shop/${latestItemlist.sk_id }"> <img
															class="image_thumb"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${latestItemlist.image}"
															alt="voluptas sit aspernatur"> <img
															class="image_thumb_swap"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${latestItemlist.image}"
															alt="voluptas sit aspernatur">
														</a>

														<div class="sale-icon">Sale</div>
													</div>
													<div class="thumb-description">
														<div class="caption">
															<h4>
																<a href="shop/${latestItemlist.sk_id }">${latestItemlist.name }</a>
															</h4>
															<h4>${latestItemlist.brand }</h4>

															<h4>${latestItemlist.availability }</h4>
														</div>
														<br>
														<div class="button-wrapper">
															<div class="price">
																<span class="price-new"> &#x20b9;
																	${latestItemlist.offerprice }</span> <span class="price-old">
																	&#x20b9; ${latestItemlist.price } </span>
															</div>
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
					<script type="text/javascript">
						$(
								'.TTProduct-Tab  .tab-box-heading > ul > li:first-child')
								.addClass('active');
						$(
								'.TTProduct-Tab  .tab-content > .tab-pane:first-child')
								.addClass('active');
					</script>
					<div class="html-content">
						<div class="box-content">
							<div id="ttcmsbottombanners">
								<div class="ttbottombannerblock">
									<div class="row">
										<div
											class="ttbottombanner1 ttbottombanner col-xs-12 col-sm-12">
											<div class="ttbottombanner-img">
												<a href="#"> <img
													src="${pageContext.request.contextPath}/resources/customer/image/catalog/demo/banners/banner-03.jpg"
													alt="banner-03.jpg"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="special-carousel products-list">
						<div class="box-heading">
							<h3>Latest</h3>
						</div>
						<div class="special-items products-carousel row">
						<c:forEach items="${ latestItemlist}" var="latestItemlist">
							<div class="product-layouts">
												<div class="product-thumb transition">
													<div class="image">
														<a href="shop/${latestItemlist.sk_id }"> <img
															class="image_thumb"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${latestItemlist.image}"
															alt="voluptas sit aspernatur"> <img
															class="image_thumb_swap"
															src="${pageContext.request.contextPath}/resources/admin/img/item_images/${latestItemlist.image}"
															alt="voluptas sit aspernatur">
														</a>

														<div class="sale-icon">Sale</div>
													</div>
													<div class="thumb-description">
														<div class="caption">
															<h4>
																<a href="shop/${latestItemlist.sk_id }">${latestItemlist.name }</a>
															</h4>
															<h4>${latestItemlist.brand }</h4>

															<h4>${latestItemlist.availability }</h4>
														</div>
														<br>
														<div class="button-wrapper">
															<div class="price">
																<span class="price-new"> &#x20b9;
																	${latestItemlist.offerprice }</span> <span class="price-old">
																	&#x20b9; ${latestItemlist.price } </span>
															</div>
														</div>
													</div>
												</div>
											</div>
							</c:forEach>
						</div>
					</div>
					<div id="blog_latest_new_home">
						<div class="box-heading">
							<h3>
								<a class="ttblock-heading"
									href="index.php-56.html?route=information/tt_blog/blogs">Latest
									News</a>
							</h3>
						</div>
						<div class="block_content">
							<div class="customNavigation">
								<a class="btn prev ttblog_prev"></a> <a
									class="btn next ttblog_next"></a>
							</div>
							<ul id="ttsmartblog-carousel"
								class="tt-carousel ttblog-content owl-carousel owl-theme">
								<li>
									<div class="blog-content">
										<div
											class="ttblog_image_holder blog_image_holder col-xs-12 col-sm-12">
											<a
												href="index.php-57.html?route=information/tt_blog&amp;tt_blog_id=5">
												<img class="image_thumb"
												src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/1-home-default-870x564.jpg"
												alt="Latest News" title="Latest News">

											</a> <span class="bloglinks"> <a class="icon zoom"
												data-lightbox="example-set"
												href="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/1-home-default-870x564.jpg"
												title="Click to view Full Image"> <i
													class="fa fa-search"></i>
											</a>
											</span>
										</div>

										<div class="blog-caption blog-sub-content col-xs-12 col-sm-12">
											<span class="blog-date"> <i class="fa fa-calendar"></i>
												<span class="date">20</span> <span class="month">Oct,
													2016</span>
											</span>
											<h5 class="post_title">
												<a
													href="index.php-57.html?route=information/tt_blog&amp;tt_blog_id=5">Answers
													to your Questions...</a>
											</h5>
											<p class="blog-description">Lorem Ipsum is simply dummy
												text of the printing a...</p>
											<a
												href="index.php-57.html?route=information/tt_blog&amp;tt_blog_id=5"
												class="read-more">read more</a>
											<div class="comment">
												<a
													href="index.php-57.html?route=information/tt_blog&amp;tt_blog_id=5">
													<i class="fa fa-comments-o"></i> 1 Comments
												</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="blog-content">
										<div
											class="ttblog_image_holder blog_image_holder col-xs-12 col-sm-12">
											<a
												href="index.php-58.html?route=information/tt_blog&amp;tt_blog_id=4">
												<img class="image_thumb"
												src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/4-home-default-870x564.jpg"
												alt="Latest News" title="Latest News">

											</a> <span class="bloglinks"> <a class="icon zoom"
												data-lightbox="example-set"
												href="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/4-home-default-870x564.jpg"
												title="Click to view Full Image"> <i
													class="fa fa-search"></i>
											</a>
											</span>
										</div>

										<div class="blog-caption blog-sub-content col-xs-12 col-sm-12">
											<span class="blog-date"> <i class="fa fa-calendar"></i>
												<span class="date">20</span> <span class="month">Oct,
													2016</span>
											</span>
											<h5 class="post_title">
												<a
													href="index.php-58.html?route=information/tt_blog&amp;tt_blog_id=4">Answers
													to your Questions...</a>
											</h5>
											<p class="blog-description">Lorem Ipsum is simply dummy
												text of the printing a...</p>
											<a
												href="index.php-58.html?route=information/tt_blog&amp;tt_blog_id=4"
												class="read-more">read more</a>
											<div class="comment">
												<a
													href="index.php-58.html?route=information/tt_blog&amp;tt_blog_id=4">
													<i class="fa fa-comments-o"></i> 0 Comments
												</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="blog-content">
										<div
											class="ttblog_image_holder blog_image_holder col-xs-12 col-sm-12">
											<a
												href="index.php-59.html?route=information/tt_blog&amp;tt_blog_id=3">
												<img class="image_thumb"
												src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/3-home-default-870x564.jpg"
												alt="Latest News" title="Latest News">

											</a> <span class="bloglinks"> <a class="icon zoom"
												data-lightbox="example-set"
												href="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/3-home-default-870x564.jpg"
												title="Click to view Full Image"> <i
													class="fa fa-search"></i>
											</a>
											</span>
										</div>

										<div class="blog-caption blog-sub-content col-xs-12 col-sm-12">
											<span class="blog-date"> <i class="fa fa-calendar"></i>
												<span class="date">20</span> <span class="month">Oct,
													2016</span>
											</span>
											<h5 class="post_title">
												<a
													href="index.php-59.html?route=information/tt_blog&amp;tt_blog_id=3">Answers
													to your Questions...</a>
											</h5>
											<p class="blog-description">Lorem Ipsum is simply dummy
												text of the printing a...</p>
											<a
												href="index.php-59.html?route=information/tt_blog&amp;tt_blog_id=3"
												class="read-more">read more</a>
											<div class="comment">
												<a
													href="index.php-59.html?route=information/tt_blog&amp;tt_blog_id=3">
													<i class="fa fa-comments-o"></i> 0 Comments
												</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="blog-content">
										<div
											class="ttblog_image_holder blog_image_holder col-xs-12 col-sm-12">
											<a
												href="index.php-60.html?route=information/tt_blog&amp;tt_blog_id=2">
												<img class="image_thumb"
												src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/2-home-default-870x564.jpg"
												alt="Latest News" title="Latest News">

											</a> <span class="bloglinks"> <a class="icon zoom"
												data-lightbox="example-set"
												href="image/cache/catalog/demo/banners/2-home-default-870x564.jpg"
												title="Click to view Full Image"> <i
													class="fa fa-search"></i>
											</a>
											</span>
										</div>

										<div class="blog-caption blog-sub-content col-xs-12 col-sm-12">
											<span class="blog-date"> <i class="fa fa-calendar"></i>
												<span class="date">20</span> <span class="month">Oct,
													2016</span>
											</span>
											<h5 class="post_title">
												<a
													href="index.php-60.html?route=information/tt_blog&amp;tt_blog_id=2">Answers
													to your Questions...</a>
											</h5>
											<p class="blog-description">Lorem Ipsum is simply dummy
												text of the printing a...</p>
											<a
												href="index.php-60.html?route=information/tt_blog&amp;tt_blog_id=2"
												class="read-more">read more</a>
											<div class="comment">
												<a
													href="index.php-60.html?route=information/tt_blog&amp;tt_blog_id=2">
													<i class="fa fa-comments-o"></i> 0 Comments
												</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="blog-content">
										<div
											class="ttblog_image_holder blog_image_holder col-xs-12 col-sm-12">
											<a
												href="index.php-61.html?route=information/tt_blog&amp;tt_blog_id=1">
												<img class="image_thumb"
												src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/1-home-default-870x564.jpg"
												alt="Latest News" title="Latest News">

											</a> <span class="bloglinks"> <a class="icon zoom"
												data-lightbox="example-set"
												href="image/cache/catalog/demo/banners/1-home-default-870x564.jpg"
												title="Click to view Full Image"> <i
													class="fa fa-search"></i>
											</a>
											</span>
										</div>
										<div class="blog-caption blog-sub-content col-xs-12 col-sm-12">
											<span class="blog-date"> <i class="fa fa-calendar"></i>
												<span class="date">20</span> <span class="month">Oct,
													2016</span>
											</span>
											<h5 class="post_title">
												<a
													href="index.php-61.html?route=information/tt_blog&amp;tt_blog_id=1">Share
													the Love for...</a>
											</h5>
											<p class="blog-description">Lorem Ipsum is simply dummy
												text of the printing a...</p>
											<a
												href="index.php-61.html?route=information/tt_blog&amp;tt_blog_id=1"
												class="read-more">read more</a>
											<div class="comment">
												<a
													href="index.php-61.html?route=information/tt_blog&amp;tt_blog_id=1">
													<i class="fa fa-comments-o"></i> 0 Comments
												</a>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
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