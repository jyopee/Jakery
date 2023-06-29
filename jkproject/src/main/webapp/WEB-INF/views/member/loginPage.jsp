
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
img {
	width: 100%;
}

.login {
	height: 1000px;
	width: 100%;
	background: #FFF5EE;
	position: relative;
}

.login_box {
	width: 1050px;
	height: 600px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #fff;
	border-radius: 10px;
	box-shadow: 1px 4px 22px -8px #0004;
	display: flex;
	overflow: hidden;
}

.login_box .left {
	width: 41%;
	height: 100%;
	padding: 25px 25px;
}

.login_box .right {
	width: 59%;
	height: 100%
}

.left .top_link a {
	color: #452A5A;
	font-weight: 400;
}

.left .top_link {
	height: 20px
}

.left .contact {
	display: flex;
	align-items: center;
	justify-content: center;
	align-self: center;
	height: 100%;
	width: 73%;
	margin: auto;
}

.left h3 {
	text-align: center;
	margin-bottom: 40px;
}

.left input {
	border: none;
	width: 80%;
	margin: 15px 0px;
	border-bottom: 1px solid #4f30677d;
	padding: 7px 9px;
	width: 100%;
	overflow: hidden;
	background: transparent;
	font-weight: 600;
	font-size: 14px;
}

.left {
	background: linear-gradient(45deg, rgba(0, 0, 0, 0) 0%,
		rgba(255, 153, 204, 0.71) 100%));
}

.submit {
	border: none;
	padding: 15px 70px;
	border-radius: 8px;
	display: block;
	margin: auto;
	margin-top: 120px;
	background: #583672;
	color: #fff;
	font-weight: bold;
	-webkit-box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
	-moz-box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
	box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
}

.right {
	background: linear-gradient(45deg, rgba(0, 0, 0, 0) 0%,
		rgba(255, 153, 204, 0.3) 100%), url(images/login.png);
	color: #fff;
	position: relative;
}

.right .right-text {
	height: 100%;
	position: relative;
	transform: translate(0%, 45%);
}

.right-text h2 {
	display: block;
	width: 100%;
	text-align: center;
	font-size: 50px;
	font-weight: 500;
}

.right-text h5 {
	display: block;
	width: 100%;
	text-align: center;
	font-size: 19px;
	font-weight: 400;
}

.right .right-inductor {
	position: absolute;
	width: 70px;
	height: 7px;
	background: #fff0;
	left: 50%;
	bottom: 70px;
	transform: translate(-50%, 0%);
}

.top_link img {
	width: 28px;
	padding-right: 7px;
	margin-top: -3px;
}
</style>
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
	<form method="POST" id="loginForm" name="loginForm" class="loginForm"
		action="memberlogin.do">
		<body>
			<section class="login">
				<div class="login_box">
					<div class="left">
						<div class="top_link">
							<a href="main.do"><img
								src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download"
								alt="">Return home</a>
						</div>
						<br> <br>
						<h3>SIGN IN</h3>
						<div class="contact">
							<input type="submit" value="login" class="login">
							<div>
								<br> <input type="text" class="form-control"
									name="memberId" id="memberId" placeholder="memberId"><br>
								<input type="password" class="form-control"
									name="memberPassword" id="memberPassword"
									placeholder="memberPassword"><br>


							</div>
	</form>
	</div>
	</div>
	<div class="right">
		<div class="right-text">
			<h2 style="color: #FFF5F5; font-weight: bold;">JAKERY</h2>
		</div>
		<div class="right-inductor"></div>
	</div>
	</div>
	</section>
</body>
</div>
</div>
</form>
</div>

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
<script src="js/main.js"></script>

</body>
</html>