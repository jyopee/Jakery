<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<style type="text/css">
.pagination ul {
	text-align: center;
}

.pagination li {
	margin: 10px;
	font-size: 20px;
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
								class="fa fa-chevron-right"></i></a></span> <span>Board  <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Review</h2>
				</div>
			</div>
		</div>
	</section>

	<div id="reviewBoard" class="container">
		<br>
		<h3 style="text-align: center; font-size: 40px">Review</h3>
		<br>
		<table class="table" id="reviewTable" style="text-align: center">
			<thead>
				<tr>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">id</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A; display: none;"
						scope="col">아이디</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">별점</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">상품이미지</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">상품이름</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">작성자</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col" class="col-8">제목</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">작성일</th>
					<th
						style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
						scope="col">조회수</th>
				</tr>
			</thead>
			<tbody id="reviewTbody">
				<c:forEach var="r" items="${list }">
					<tr>
						<td style="color: #404040">${r.prReviewId }</td>
						<td style="display: none;">${r.memberId }</td>
						<td style="color: #404040" class="col-3" id="reviewStar">${r.prReviewStar }
							<input type="hidden" id="star" value="${r.prReviewStar }">
						</td>
						<td style="color: #404040"><img src=${r.prImgName }
							alt="상품이미지" style="width: 100px; height: 130px;"></td>
						<td style="color: #404040">${r.prName }</td>
						<td style="color: #404040" class="col-3">${r.memberName }</td>
						<td style="color: #404040" class="col-6">[리뷰]
							${r.prReviewTitle }</td>
						<td style="color: #404040">${r.prReviewDate }</td>
						<td style="color: #404040">${r.prReviewHit }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody>
				<tr>
					<td colspan="5">
						<ul class="pagination">

							<!--이전버튼 활성화 여부 -->
							<c:if test="${pageVO.prev }">
								<li><a
									href="reviewPageList.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount}">이전</a></li>
							</c:if>

							<!-- 1. 페이지번호 처리 -->
							<c:forEach var="num" begin="${pageVO.startPage }"
								end="${pageVO.endPage }">
								<li class="${pageVO.pageNum eq num ? 'active' : '' }"><a
									href="reviewPageList.do?pageNum=${num }&amount=${pageVO.amount}">${num }</a></li>
							</c:forEach>

							<!-- 3. 다음버튼 활성화 여부 -->
							<c:if test="${pageVO.next }">
								<li><a
									href="reviewPageList.do?pageNum=${pageVO.endPage + 1 }&amount=${pageVO.amount}">다음</a></li>
							</c:if>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>

		<!-- 검색 -->
		<div class="container row" style="text-align: center;">
			<div class="col-5" style="width: 500px; margin: 0 auto;">
				<form class="d-flex" id="reviewSearch">
					<select id="reSelectOpt" name="reSelectOpt">
						<option id="prReviewTitle" value="prReviewTitle">제목</option>
						<option id="reMemberName" value="memberName">작성자</option>
						<option id="reMemberId" value="memberId">아이디</option>
					</select> <input class="form-control me-2 " type="text" placeholder="Search"
						id="reviewInfo" name="reviewInfo"> <input type="text"
						style="display: none;">
					<button class="btn btn-outline-secondary btn-sm" type="button"
						id="reviewBtn">Search</button>
				</form>
			</div>
		</div>
		<br>

		<form id="selectFrm" action="noticeReviewSelect.do" method="post">
			<input type="hidden" id="prReviewId" name="prReviewId"> <input
				type="hidden" id="memberId" name="memberId" value="${memberId }">
			<input type="hidden" id="memberRole" name="memberRole"
				value="${memberRole }">
			<button type="button" id="back">뒤로가기</button>
		</form>
	</div>

	<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
	  let btn = document.getElementById('reviewBtn')
	  btn.addEventListener('click', reSearchInfo)
	 //검색
	 function reSearchInfo() {
		let select = document.getElementById('reSelectOpt').value;
	    let val = document.getElementById('reviewInfo').value;
	    
	    reviewSearch.action='reviewSearchPageList.do?reSelectOpt=' + select + '&reviewInfo=' + val
	    reviewSearch.submit();
	 }
	
		
	//별점
	 let stars = document.querySelectorAll('#star')
	 for(let star of stars){
		 let tds = document.querySelectorAll('#reviewStar')
		 console.log(star.parentElement)
		     let starNum = star.value
		     let td = star.parentElement
		     console.log(starNum)
			 if(starNum == "1"){
				 td.innerText = "★"
			 }else if(starNum == "2"){
				 td.innerText = "★★"
			 }else if(starNum == "3"){
				 td.innerText = "★★★"
			 }else if(starNum == "4"){
				 td.innerText = "★★★★"
			 }else if(starNum == "5"){
				 td.innerText = "★★★★★"
			 }else{
				 td.innerText = ""
			 }
	  }
	})
	</script>

	<script src="js/noticeReviewListForm.js"></script>
	<script src="boot/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>


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