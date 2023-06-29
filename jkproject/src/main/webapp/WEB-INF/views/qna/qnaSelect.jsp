<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div><h1>QNA 상세정보</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="150">작성자</th>
				<td width="200">${qna.memberId }</td>
				<th width="150">작성일자</th>
				<td width="200">${qna.prQnaDate}</td>
			</tr>
			<tr>
				<th>제 목</th>
				<td colspan="3">${qna.prQnaTitle }</td>
			</tr>	
			<tr>
				<th>내 용</th>
				<td colspan="3">
					<textarea rows="10" cols="50">${qna.prQnaSubject }</textarea>
				</td>
			</tr>				
			<tr>
				<th>첨부파일</th>
				<td colspan="3">${qna.prImgName }</td>
			</tr>							
		</table>
	</div><br>
	<div>
		<form id="frm" method="post">			
				<button type="button" onclick="qnaEdit('E')">글수정</button>
				<button type="button" onclick="qnaEdit('D')">글삭제</button>
				<button type="button" onclick="qnaEdit('C')">답글</button>			
			<input type="hidden" name="prQnaId" value= "${qna.prQnaId }">
		</form>
	</div>
</div>
<script type="text/javascript">
	function qnaEdit(str) {
		if(str == 'E') {
			frm.action="noticeEdit.do";
		}if(str == 'D') {
			let yn = confirm("작성글을 삭제하겠나?");
			if(yn) {
				frm.action="noticeDelete.do";
			}else{
				return false;
			}
		}else{
			frm.action="QnaComment.do"
		}
		
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