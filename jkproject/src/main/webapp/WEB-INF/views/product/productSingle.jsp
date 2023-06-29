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
li {
	list-style: none;
}
</style>
</head>
<body>
	<!-- 태경 -->
	<!-- 배너 -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/banner.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="homeMain.do">Home <i
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
				<div class="col-lg-6 mb-5 ftco-animate">

					<img src=${product.prImgName } class="img-fluid"
						alt="Colorlib Template">
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">


					<h3>${product.prName }</h3>
					<p class="price">
						<span>${product.prPrice }</span>
					</p>
					<p>상품설명</p>
					<p>어쩌고저쩌고.</p>
					<div class="row mt-4">

						<!-- 대충만들어본 옵션 a를 클릭하면 밑에 있는 테이블에 추가되도록.. -->
						<diV id="optionSelect">
							<!--
							<table>
								<tr>
									<th>옵션</th>
									<td><a href="#" id="pOption"
										class="btn btn-outline-secondary btn-sm ml-5 mr-2">밀크</a> <a
										href="#" id="pOption"
										class="btn btn-outline-secondary btn-sm mr-2">말차</a></td>
								</tr>
							</table>  -->

							<hr />
							<div class="row">

								<table class="col">
									<thead>
										<tr>
											<th class="col-4" style="color: black; padding: 0px;">수량</th>
											<th class="col-4" style="color: black; padding: 0px;">가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<!-- 이런식으로 추가되게 ajax사용 -->
											<td><input class="col-4" type="number" id="optionNum"
												name="optionNum" min="1" onclick='count()' value="1"></td>
											<td id="totalPrice" class="totalPrice"><input id='aa'
												type="text" value="${product.prPrice}" readonly></td>
										</tr>
									</tbody>
								</table>
							</div>
							<br>











							<div>
								<form id="Addfrm" method="post">
									<p>
										<button type="button" onclick="addCart('A')"
											class="btn btn-primary py-3 px-5 mr-2">Add cart</button>
										&nbsp;&nbsp;
										<button type="button" onclick="addCart('B')"
											class="btn btn-primary py-3 px-5 mr-2">Buy now</button>


										<input type="hidden" name="prId" id="prId"
											value="${product.prId}"> <input type="hidden"
											name="memberId" id="memberId" value="${memberId}"> <input
											type="hidden" name="amount" id="amount"> <input
											type="hidden" name="price" id="price">

									</p>
								</form>
							</div>
						</div>
					</div>

				</div>



				<!--상품페이지 메뉴-->


                <!-- Nav tabs -->
				<ul class="nav nav-tabs" style="font-size: 20px;">
					<li class="nav-item"><a class="nav-link active"
						data-bs-toggle="tab" href="#home">detail</a></li>
					<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
						href="#menu1">review</a></li>
					<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
						href="#menu2">QnA</a></li>
				</ul>

				<br>
				<br>
				<!-- Tab panes -->
				<div class="tab-content">

					<div class="tab-pane container active" id="home">
						<!-- 상품상세 -->
						<img src=${product.prImgDetail } class="img-fluid"
							alt="Colorlib Template"
							style="display: block; margin: 0 auto; width: 1000px;">
					</div>
					<div class="tab-pane container fade" id="menu1">
					 <!-- 리뷰 게시글 테이블(아작스 처리) -->
					 		<div id="reviewBoard">
							<h3>review</h3>
							<table class="table" id="reviewTable" style="text-align: center">
								<thead>
									<tr>
										<th
											style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A; display: none;"
											scope="col">id</th>
										<th
											style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
											scope="col">작성자</th>
										<th
											style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A;"
											scope="col">별점</th>
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
							</table>
							<form id="reviewFrm" action="reviewSelect.do" method="post">
							    <input type="hidden" id="prReviewId" name="prReviewId"> 
								<input type="hidden" id="reMemberId" name="memberId" value="${memberId }"> 
								<input type="hidden" id="reMemberRole" name="memberRole" value="${memberRole }">
							</form>

							<form id="reviewInsertFrm" action="reviewInsertForm.do" method="post">
								<!-- 여기에 C:IF쓰기ㅇㄹㅇ -->
								<input type="hidden" id="rePrId" name="prId"
									value="${product.prId}">
								<c:if test="${not empty memberId }">
									<button class="btn btn-outline-secondary btn-sm" type="submit"
										id="reInsertBtn" style="float: right;">글쓰기</button>
								</c:if>
							</form>
						</div>
						<br>

						<hr style="clear: both;">

						<!-- 검색 -->
						<div class="container row">
							<div class="col-5" style="width: 500px; margin: 0 auto;">
								<form class="d-flex" id="reviewSearch">
									<select id="reSelectOpt" name="reSelectOpt">
									<option id="prReviewTitle" value="prReviewTitle">제목</option>
									<option id="reMemberName" value="memberName">작성자</option>
									<option id="reMemberId" value="memberId">아이디</option>
									</select>
									<input class="form-control me-2 " type="text"
										placeholder="Search" id="reviewInfo" name="reviewInfo">
										<input type="text" style="display:none;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="reviewBtn">Search</button>
								</form>
							</div>
						</div>
					 
					 
					
					</div>
					<div class="tab-pane container fade" id="menu2">
						<!-- 큐앤에이 게시글 테이블(아작스 처리) -->
						<div id="qnaBoard">
							<h3>Qna</h3>
							<table class="table" id="qnaTable" style="text-align: center">
								<thead>
									<tr>
										<th
											style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A; display: none;"
											scope="col">id</th>
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
										<th
											style="color: white; font-size: 16px; padding: 8px; background-color: #AF4A3A; display: none;"
											scope="col">비밀글여부</th>
									</tr>
								</thead>
							</table>
							<form id="selectFrm" action="qnaSelect.do" method="post">
								<input type="hidden" id="prQnaId" name="prQnaId"> 
								<input type="hidden" id="memberId" name="memberId" value="${memberId }"> 
								<input type="hidden" id="memberRole" name="memberRole" value="${memberRole }">
							</form>

							<form id="frm" action="qnaInsertForm.do" method="post">
								<!-- 여기에 C:IF쓰기ㅇㄹㅇ -->
								<input type="hidden" id="prId" name="prId"
									value="${product.prId}">
								<c:if test="${not empty memberId }">
									<button class="btn btn-outline-secondary btn-sm" type="submit"
										id="insertBtn" style="float: right;">글쓰기</button>
								</c:if>
							</form>
						</div>
						<br>

						<hr style="clear: both;">

						<!-- 게시글 검색 -->
						<div class="container row">
							<div class="col-5" style="width: 500px; margin: 0 auto;">
								<form class="d-flex" id="qnaSearch">
									<select id="selectOpt" name="selectOpt">
									<option id="pQnaTitle" value="prQnaTitle">제목</option>
									<option id="memberName" value="memberName">작성자</option>
									<option id="memberId" value="memberId">아이디</option>
									</select>
									<input class="form-control me-2 " type="text"
										placeholder="Search" id="searchInfo" name="searchInfo">
										<input type="text" style="display:none;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="searchBtn">Search</button>
								</form>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>

	</section>
	<script type="text/javascript">
	
								function count() {
									let a = document
											.getElementById('optionNum').value
									let b = ${product.prPrice}
									console.log(${product.prPrice})
									console.log(document
											.getElementById('optionNum').value)
									let c = Number(a) * b
									console.log(Number(a) * b)
									document.getElementById('totalPrice').value = c;
									document.getElementById('aa').value = c;
								}
								function addCart(str) {
										if (str == 'A') {
											console.log('이동 jsp')
												let amount = document.getElementById('optionNum').value
												let price = document.getElementById('aa').value
												
												document.querySelector('#amount').value = amount;
												document.querySelector('#price').value = price;
												
												Addfrm.action = "cartAdd.do"
												Addfrm.submit();
												
											/* location.href = "cartAdd.do?prId="+document.getElementById('prId').value; */
											
										} else {
											let yn = confirm("이상품을 바로 결제하겠습니까?");
											if (yn) {
												let amount = document.getElementById('optionNum').value
												let price = document.getElementById('aa').value
												
												document.querySelector('#amount').value = amount;
												document.querySelector('#price').value = price;
												

												Addfrm.action = "payright.do";
												Addfrm.submit();

											} else {
												return false;
											}
										}
						

								}
								

								
							</script>
	
	<script type="text/javascript" src="js/reviewSearch.js"></script>
	<script type="text/javascript" src="js/review.js"></script>
	<script type="text/javascript" src="js/qnaSearch.js"></script>
	<script type="text/javascript" src="js/productSingle.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="boot/js/bootstrap.min.js"></script>
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
