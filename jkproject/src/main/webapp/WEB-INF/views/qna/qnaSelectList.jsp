<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
								class="fa fa-chevron-right"></i></a></span> <span>Mypage <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Mypage</h2>
				</div>
			</div>
		</div>
	</section>
	<div align="center">
	<div><h1> QNA 목록</h1></div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th width="70" align="center">상품사진</th>
					<th width="70" align="center">상품명</th>
					<th width="250" align="center">번호</th>
					<th width="150" align="center">제목</th>
					<th width="150" align="center">작성일자</th>
					<th width="150" align="center">작성자</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty qna }">
					<tr>
						<td colspan="6" align="center">게시글이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty qna }">
					<c:forEach items="${qna }" var="q">
						<c:if test="${q.prQnaSecret eq 1 || role eq 1}">
						<tr>
							<td colspan="6" align="center">비밀 게시글입니다.</td>
						</tr>
						</c:if>
						<c:if test="${q.prQnaSecret ne 1 }">
						<tr onmouseover="this.style.background='#fcecae'" 
							onmouseleave="this.style.background='#FFFFFF'"
							onclick="qnaSelect('${q.prQnaId}')">
							<td align="center" width="70"><img src="${q.prImgPath }" alt="" width="70"></td>
							<td align="center">${q.prName }</td>
							<td align="center">${q.prQnaId }</td>
							<td align="center">${q.prQnaTitle }</td>
							<td align="center">${q.prQnaDate }</td>
							<td align="center">${q.memberId }</td>
						</tr>
						<tr onmouseover="this.style.background='#fcecae'" 
							onmouseleave="this.style.background='#FFFFFF'"
							onclick="qnaSelect('${pQnaComId}')">
						</c:if>		
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div><br>
	<div>
		<form id="frm" action="qnaSelect.do" method="post">
			<c:if test="${not empty memberId }">
				<input type="button" value="글작성" onclick="location.href='qnaInsertForm.do'">
			</c:if>
			<input type="hidden" id="prQnaId" name="prQnaId">
		</form>
	</div>
</div>
<script type="text/javascript">
	function qnaSelect(id) {  //선택글 상세보기
		document.getElementById("prQnaId").value = id;
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
<script src="js/main.js"></script>

</body>
</html>