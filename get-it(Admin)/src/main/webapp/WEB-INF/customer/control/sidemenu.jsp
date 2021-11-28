<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside id="column-left" class="col-sm-3 hidden-xs">
	<div class="main-category-list left-main-menu">
		<div class="TT-panel-heading">Categories</div>
		<div class="menu-category">
			<ul class="dropmenu">

				<li><a href="/springproject/customer/grocery">Grocery</a></li>
				<li><a href="/springproject/customer/breadanddairy">Bread
						&amp; dairy</a></li>
				<li><a href="/springproject/customer/fruits">Fruits</a></li>
				<li><a href="/springproject/customer/beverages">Beverages</a></li>
				<li><a href="/springproject/customer/sweets">Sweets</a></li>
				<li><a href="/springproject/customer/packedsnack">Packed
						Snack </a></li>

			</ul>
		</div>
	</div>

	<div class="banner-panel">
		<div id="banner0" class="owl-carousel">
			<div class="item">
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/customer/image/cache/catalog/demo/banners/left-banner-1-274x500.jpg"
					alt="Category-Left-Banner" class="img-responsive"></a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$('#banner0').removeClass("owl-carousel");
	</script>
	<div class="latest-carousel products-list">
		<div class="box-heading">
			<h3>Latest</h3>
		</div>
		<div class="latest-items products-carousel row scrollbar"
			style="overflow: auto; max-height: 580px; padding: 0px;" id="style-3">
			<c:forEach items="${ latestItemlist}" var="latestItemlist">
				<div class="product-layouts">
					<div class="product-thumb transition">
						<div class="image">

							<a href="shop/${latestItemlist.sk_id }"> <img
								class="img-responsive"
								src="${pageContext.request.contextPath}/resources/admin/img/item_images/${latestItemlist.image}"
								alt="harum quidem facilisary" title="harum quidem facilisary">
							</a>

						</div>
						<div class="thumb-description">
							<div class="caption">
								<h4>
									<a href="shop/${latestItemlist.sk_id }">${latestItemlist.name }</a>
								</h4>
								<div class="rating no-rating">
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
								<p class="description">harum quidem facilisary..</p>
							</div>
							<div class="button-wrapper">
								<h4>${latestItemlist.brand }</h4>
								<h4>${latestItemlist.availability }</h4>
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
	<div class="latest-carousel products-list">
		<div class="box-heading">
			<h3>Latest</h3>
		</div>
		<div class="latest-items products-carousel row scrollbar"
			style="overflow: auto; max-height: 580px; padding: 0px;" id="style-3">
			<c:forEach items="${ Itemlist}" var="Itemlist">
				<div class="product-layouts">
					<div class="product-thumb transition">
						<div class="image">

							<a href="shop/${Itemlist.sk_id }"> <img
								class="img-responsive"
								src="${pageContext.request.contextPath}/resources/admin/img/item_images/${Itemlist.image}"
								alt="harum quidem facilisary" title="harum quidem facilisary">
							</a>

						</div>
						<div class="thumb-description">
							<div class="caption">
								<h4>
									<a href="shop/${Itemlist.sk_id }">${Itemlist.name }</a>
								</h4>
								<div class="rating no-rating">
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-wrapper">
								<h4>${Itemlist.brand }</h4>
								<h4>${Itemlist.availability }</h4>
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
</aside>
