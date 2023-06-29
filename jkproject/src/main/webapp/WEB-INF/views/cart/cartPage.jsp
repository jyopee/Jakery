<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="js/cartMain.js"></script>
</head>
<body>
	<div class="collapse navbar-collapse" id="ftco-nav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown04"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">BOARD</a>
				<div class="dropdown-menu" aria-labelledby="dropdown04">
					<a class="dropdown-item" href="product.html">NOTICE</a> <a
						class="dropdown-item" href="product-single.html">Q & A</a> <a
						class="dropdown-item" href="cart.html">REVIEW</a>
				</div></li>
		</ul>
	</div>
	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/banner.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">

					<h2 class="mb-0 bread">My Cart</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="table-wrap">
					<table class="table" id="tbl">
						<thead class="thead-primary" id="thd">
							<tr>
								<th>&nbsp;</th>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						
						<tbody>
							<!-- <tr class="alert" role="alert">

								<td>
									<div class="img" style="background-image:'';"></div>
								</td>
								<td>
									<div class="email"></div>									
								</td>
								<td >
									<div class="price"></div>
								</td>
									
								<td class="quantity">
									<div class="input-group">
										<input type="number" name="quantity"
											class="quantity form-control input-number" value="2" min="1"
											max="100"> 
									</div>
								</td>
								<td>
									<div class="total"></div>
								</td>
							</tr>-->

							<!-- <tr class="alert" role="alert">
								
								<td>
									<div class="img"
										style="background-image: url(images/prod-2.jpg);"></div>
								</td>
								<td>
									<div class="email">
										<span>Jim Beam Kentucky Straight</span>
									</div>
								</td>
								<td>$30.99</td>
								<td class="quantity">
									<div class="input-group">
										<input type="number" name="quantity"
											class="quantity form-control input-number" value="1" min="1"
											max="100">
									</div>
								</td>
								<td>$30.99</td>
								<td>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true"><i class="fa fa-close"></i></span>
									</button>
								</td>
							</tr> -->
						</tbody>
					</table>
				</div>
			</div>
			<div class="row justify-content-end">
				<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
					<!-- <div class="cart-total mb-3">
						<h3>Cart Totals</h3>
						<p class="d-flex">
							<span>Subtotal</span> <span></span>
						</p>
						<p class="d-flex">
							<span>Delivery</span> <span></span>
						</p>
						<hr>
						<p class="d-flex total-price">
							<span>TOTAL </span> <span></span>
						</p>
					</div> -->
					<p class="text-center">
						<a href="cartPay.do" class="btn btn-primary py-3 px-4">Proceed
							to Checkout</a>
					</p>
				</div>
			</div>
		</div>
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
