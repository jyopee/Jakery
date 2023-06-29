<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<script type="text/javascript" src="js/qnaSelectForm.js"></script>
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
								class="fa fa-chevron-right"></i></a></span> <span>Board  <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">QnA</h2>
				</div>
			</div>
		</div>
	</section>

	<!-- 글보여주기 폼 -->
	<div class="container">
		<br>
		<div class="container">
		<h2 style="margin-left: 22px; color: black;" >Qna</h2>
			<table class="table">
				<tr >
					<th class="col-2">작성자</th>
					<td style="color: #404040;">${prQna.memberName}</td>
				</tr>
				<tr>
					<th class="col-2">작성일</th>
					<td style="color: #404040;">${prQna.prQnaDate}</td>
				</tr>
				<tr>
					<th>제 목</th>
					<td style="color: #404040;">${prQna.prQnaTitle}</td>
				</tr>
				<tr>
					<th>내 용</th>
					<td style="color: #404040; height: 500px;" >${prQna.prQnaSubject}</td>
				</tr>
			</table>
            <!--답글테이블 -->
			<div id="comTable">
			</div>
			
			<!-- 답글 작성 폼 -->
			<form id="comFrm" action="" method="post" style="display: none;">
			<div class="container">
				<table class="table table-sm">
					<tr>
						<th style="width: 70px; padding: 10px">답글</th>
					<td><input id="prQnaComSubject" name="prQnaComSubject" class="form-control" >
						</tr>
				</table>
			</div>
			<br>
			<div>
				<input type="hidden" id="memberId" value="${prQna.memberId }">  
				<input type="hidden" id="prQnaId" value="${prQna.prQnaId }"> 
				<input type="button" id="insert" value="등록">&nbsp;&nbsp; <input type="button" id="comCancel" value="취소">
			</div>
			</form>
			
		</div><br>
		<form id="frm" action="" method="post">
		         <c:if test="${memberId eq prQna.memberId }">
					<button type="button" onclick="qnaEdit('E')">수정</button>&nbsp;&nbsp;
					<button type="button" onclick="qnaEdit('D')">삭제</button>&nbsp;&nbsp;
				</c:if>
				<c:if test="${memberRole eq 1 }">
					<button type="button" id="prQnaComment" >답글</button>&nbsp;&nbsp;
				</c:if>
				<button type="button" onclick="back()">뒤로가기</button>
				<input type="hidden" id="prQnaId" name="prQnaId" value="${prQna.prQnaId }">
				<input type="hidden" id="prId" name="prId" value="${prQna.prId }">

		</form>
	</div>
	<br>
<!--jsp처리 -->
<script type="text/javascript">
// 	//ckeditor
// 	window.onload = function() {
// 		CKEDITOR.replace('prQnaComSubject', {
// 			height : 200,
// 			filebrowserUploadUrl: '${pageContext.request.contextPath}/fileupload.do'
// 		});
		
// 	}
	
	
	
		//삭제 버튼, 수정버튼
		function qnaEdit(str) {
			if (str == 'E') {
				frm.action = "noticeQnaUqdateForm.do";  
			} else {
				let yn = confirm("문의글을 삭제하시겠습니까?");
				if (yn) {
					frm.action = "noticeQnaDelete.do"; //만드어야함
				} else {
					return false;
				}

			}
			frm.submit();
		}
				
		//뒤로가기 버튼
		function back() {
			console.log("back()뒤로가기 버튼")
			frm.action = "qnaPageList.do";			
			frm.submit();
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