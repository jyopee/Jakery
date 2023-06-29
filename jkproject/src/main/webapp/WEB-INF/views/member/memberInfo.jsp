<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
      min-height: 100vh;
		font-family: "Spectral", serif;
    }
	.navbar-brand {
    font-weight: 700;
    font-size: 50px;
    position: relative;
    text-transform: uppercase;}
    
    .ftco-navbar-light .navbar-brand {
    color: #6e5344}
    

	element.style {
    background-image: url(images/banner.png);
    background-position: 50% 0%;
}
    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>
<body>
<div class="collapse navbar-collapse" id="ftco-nav">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
		<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Products</a>
			<div class="dropdown-menu" aria-labelledby="dropdown04">
				<a class="dropdown-item" href="product.html">Products</a> <a
					class="dropdown-item" href="product-single.html">Single Product</a>
				<a class="dropdown-item" href="cart.html">Cart</a> <a
					class="dropdown-item" href="checkout.html">Checkout</a>
			</div></li>
		<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
		<li class="nav-item active"><a href="contact.html"
			class="nav-link">Contact</a></li>
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
				<p class="breadcrumbs mb-0">
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>Contact Us <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">Login Page</h2>
			</div>
		</div>
	</div>
</section>
	
	 <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원정보</h4>
        <form id="frm" action="memberPasswordCheck.do" method="post">
        <div class="mb-3">
            <label for="memberId">아이디</label>
            <input type="text" class="form-control" id="memberId"  name="memberId" placeholder="" readonly="readonly" value= "${memberId }">
            <div class="invalid-feedback">
              아이디를 입력해주세요
            </div>
           
          </div>
          <div class="row">
            
          </div>
			<div class="mb-3">
            <label for="memberName">이름</label>
            <input type="text" class="form-control" id="memberName" name="memberName"placeholder="" required value="${memberName }"readonly="readonly">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="memberEmail">이메일</label>
            <input type="email" class="form-control" id="memberEmail" name="memberEmail" required value="${memberEmail }"readonly="readonly">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
		<div class="mb-3">
            <label for="memberPhone">전화번호</label>
            <input type="tel" class="form-control" id="memberPhone" name="memberPhone" value="${memberPhone }" placeholder="" readonly="readonly">
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="memberAddress">주소</label>
            <div>
            <input type="text" id="sample4_postcode" name="addr1" class="form-control" value="${memberAddress }"readonly="readonly">
          </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">정보 수정</button>
        </form>
      </div>
    </div>
    </div>
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
</html>