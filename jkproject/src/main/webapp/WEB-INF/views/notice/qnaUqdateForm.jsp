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
					<h2 class="mb-0 bread">QnA</h2>
				</div>
			</div>
		</div>
	</section>

	<!-- 글작성 폼 -->
	<div class="container">
		<form name="ajaxFrm" action="qnaUpdate.do" method="post" >
			<div class="container">
				<table class="table table-sm">
					<tr>
						<th>작성자</th>
						<td><input type="text" id="memberName" name="memberName"
							value="${prQna.memberName}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제 목</th>
						<td><input type="text" id="prQnaTitle" name="prQnaTitle"
							class="col-12" value="${prQna.prQnaTitle }"></td>
					</tr>
					<tr>
						<th>내 용</th>
					<td><textarea id="prQnaSubject" name="prQnaSubject">${prQna.prQnaSubject }</textarea> 
						</tr>
					<tr>
						<td colspan="2">
						<p style="float: right">
						
						<input type="checkbox" id="secret" name="secret" onclick="secretNum()">비밀글
						<input type="hidden" id="prQnaSecret" name="prQnaSecret" value=0>
						
						</p>
						</td>
					</tr>
				
				</table>
			</div>
			<br>
			<div>
				<input type="hidden" name="memberId" value="${prQna.memberId }">  
				<input type="hidden" name="prId" value="${prQna.prId }"> 
				<input type="hidden" name="prQnaId" value="${prQna.prQnaId }"> 
				<input type="submit" value="등록">&nbsp;&nbsp; <input type="button" value="뒤로가기" onclick="back()">
			</div>
		</form>
	</div>
<script type="text/javascript">
		window.onload = function() {
			CKEDITOR.replace('prQnaSubject', {
				height : 500,
				filebrowserUploadUrl: '${pageContext.request.contextPath}/fileupload.do'
			});
			console.log(document.getElementById('prQnaSecret').value)
			
		}
			function secretNum(){
				document.getElementById('prQnaSecret').value = 1
				console.log(document.getElementById('prQnaSecret').value)
				
			}
		
		function back() {
			ajaxFrm.action ="qnaSelect.do"
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