<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="boot/js/bootstrap.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<script src="js/main.js"></script>
<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
<script src="ckeditor/ckeditor.js"></script>
<style type="text/css">
#ajaxFrm fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

#ajaxFrm input[type=radio] {
	display: none;
}

#ajaxFrm label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
	background-color: #FFE1E1;
}

#ajaxFrm label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#ajaxFrm label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#ajaxFrm input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
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
								class="fa fa-chevron-right"></i></a></span> <span>Board<i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Review</h2>
				</div>
			</div>
		</div>
	</section>


	<!-- 글작성 폼 -->
	<div class="container">
		<form name="ajaxFrm" id="ajaxFrm" action="reviewUpdate.do"
			method="post">
			<div class="container">
			<br>
				<fieldset>
					<span class="text-bold">별점을 선택해주세요</span> 
					<input type="radio" name="prReviewStar" value="5" id="rate1"><label for="rate1">★</label>
					<input type="radio" name="prReviewStar" value="4" id="rate2"><label for="rate2">★</label> 
					<input type="radio" name="prReviewStar" value="3" id="rate3"><label for="rate3">★</label> 
					<input type="radio" name="prReviewStar" value="2" id="rate4"><label for="rate4">★</label> 
					<input type="radio" name="prReviewStar" value="1" id="rate5"><label for="rate5">★</label>  
				</fieldset>
				<table class="table table-sm">
					<tr>
						<th>작성자</th>
						<td><input type="text" id="memberName" name="memberName"
							value="${prReview.memberName}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제 목</th>
						<td><input type="text" id="prReviewTitle" name="prReviewTitle"
							class="col-12" value="${prReview.prReviewTitle }"></td>
					</tr>
					<tr>
						<th>내 용</th>
					<td><textarea id="prReviewSubject" name="prReviewSubject">${prReview.prReviewSubject }</textarea> 
						</tr>
				
				</table>
			</div>
			<br>
			<div>
				<input type="hidden" name="memberId" value="${prReview.memberId }">  
				<input type="hidden" name="prId" value="${prReview.prId }"> 
				<input type="hidden" name="prReviewId" value="${prReview.prReviewId }"> 
				<input type="submit" value="등록">&nbsp;&nbsp; <input type="button" value="취소" onclick="back()">
			</div>
		</form>
	</div>
<script type="text/javascript">
		window.onload = function() {
			CKEDITOR.replace('prReviewSubject', {
				height : 500,
				filebrowserUploadUrl: '${pageContext.request.contextPath}/fileupload.do'
			});
			
		}
		
		function back() {
			ajaxFrm.action ="reviewSelect.do"
			ajaxFrm.submit();
		}

		

		
	</script>

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