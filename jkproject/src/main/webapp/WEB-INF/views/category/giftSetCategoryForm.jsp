
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
</head>
<body>
	<div class="collapse navbar-collapse" id="ftco-nav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown04"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
				<div class="dropdown-menu" aria-labelledby="dropdown04">
					<a class="dropdown-item" href="product.html">Products</a> <a
						class="dropdown-item" href="product-single.html">Single
						Product</a> <a class="dropdown-item" href="cart.html">Cart</a> <a
						class="dropdown-item" href="checkout.html">Checkout</a>
				</div></li>
			<li class="nav-item	"><a href="blog.html" class="nav-link">Blog</a></li>
			<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
		</ul>
	</div>
	</div>
	</nav>
	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/banner.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>Products <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Products</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="row mb-4">
						<div
							class="col-md-12 d-flex justify-content-between align-items-center">
							</select>
						</div>
					</div>
					<!--
					<div class="container">
						<div class="card-group container" id="items"></div>
						<div class="container">
							<button class="btn btn-danger mt-3" id="sortAbc">가나다순</button>
							<button class="btn btn-danger mt-3" id="sortPrice">가격순</button>
							<button class="btn btn-danger mt-3" id="revert">원래</button>

						</div>
					</div>
					  -->



					<div class="row">
						<c:forEach var="pro" items="${products}" begin="43" end="51"
							varStatus="statusPro">
							<div class="col-md-4 d-flex">

								<div class="product ftco-animate" style="cursor: pointer;"
									onclick='selectInfo()' id="Select">
									<form id="frm" action="productSelect.do" method="post">
										<input type="hidden" id="prId" name="prId"
											value="${pro.prId }">
									</form>
									<div
										class="img d-flex align-items-center justify-content-center">
										<img src=${pro.prImgName} width=254px height=340px>
									</div>
									<div class="text text-center">

										<h2>${pro.prName }</h2>
										<span class="price">${pro.prPrice }won</span>
									</div>
								</div>
							</div>

						</c:forEach>
					</div>

					<script type="text/javascript">
						function selectInfo() { //선택글 상세보기
							console
									.log(event.target.parentNode.parentNode.children[0]
											.submit())
						}
					</script>








					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3>Product Types</h3>
							<ul class="p-0">
								<li><a href="cakeCategoryForm.do">Cake <span
										class="fa fa-chevron-right"></span></a></li>
								<li><a href="cookieCategoryForm.do">Cookie <span
										class="fa fa-chevron-right"></span></a></li>
								<li><a href="chocolateCategoryForm.do">Chocolate <span
										class="fa fa-chevron-right"></span></a></li>
								<li><a href="breadCategoryForm.do">Bread <span
										class="fa fa-chevron-right"></span></a></li>
								<li><a href="giftSetCategoryForm.do">GiftSet <span
										class="fa fa-chevron-right"></span></a></li>
								<li><a href="checkForm.do">Event <span
										class="fa fa-chevron-right"></span></a></li>
							</ul>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
	</section>






	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>