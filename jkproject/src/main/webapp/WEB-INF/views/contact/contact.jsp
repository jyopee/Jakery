<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<body>

	<div class="collapse navbar-collapse" id="ftco-nav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown04"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
				<div class="dropdown-menu" aria-labelledby="dropdown04">
					<a class="dropdown-item" href="product.html">Products</a> <a
						class="dropdown-item" href="product-single.html">Single
						Product</a> <a class="dropdown-item" href="cart.html">Cart</a> <a
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
					<h2 class="mb-0 bread">Contact Us</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="row justify-content-center">



			<div class="col-md-3">
				<div class="dbox w-100 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="fa fa-map-marker"></span>
					</div>
					<div class="text">
						<p>
							<span>Address:</span> (주)예담직업전문학교 대구광역시 중구 중앙대로 403 (남일동 135-1, 5층)
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="dbox w-100 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="fa fa-phone"></span>
					</div>
					<div class="text">
						<p>
							<span>Phone:</span> <a href="tel://1234567920">053-421-2460</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="dbox w-100 text-center">
					<div class="icon d-flex align-items-center justify-content-center">
						<span class="fa fa-paper-plane"></span>
					</div>
					<div class="text">
						<p>
							<span>Email:</span> <a href="mailto:info@yoursite.com">ask@yedam.ac</a>
						</p>
					</div>
				</div>

			</div>
		</div>

<div id="map" style="width: 1300px; height: 650px; margin: auto"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f54daf20c1c820530c020ca5ccdc76e4"></script>
	<script>
		window.onload = function() {

			console.log(window.location.href);
			let url = window.location.href;
			var lat = 35.869280;
			var lng = 128.593190;

			console.log(lat, lng);

			let enc = encodeURI('한글'); // 화면에서는 한글로 보여짐
			let dec = decodeURI(enc); // %%%%%어쩌고 다시 디코딩 해줘야 원글로 보여짐
			console.log(encodeURI('한글'), decodeURI(encodeURI('한글')))

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng(lat, lng);

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다 / '+ddd+' -> 그냥 넣으면 텍스트임. 불러온 값을 넣으려면 '++' 
			marker.setMap(map);

			var iwContent = '<div style="padding:5px;">JAKERY입니다.<br><a href="https://map.kakao.com/link/map/JAKERY입니다.,35.869280,128.593190" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/킹텔,35.869280,128.593190" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			iwPosition = new kakao.maps.LatLng(lat, lng); //인포윈도우 표시 위치입니다 

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				position : iwPosition,
				content : iwContent
			});

			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker);
		}
	</script>

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
	<script src="js/main.js"></script>

</body>
</html>