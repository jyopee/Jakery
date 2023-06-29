<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>

img {
	width: 100%;
}

.login {
	height: 100vw;
	width: 100%;
	background: #FFF5EE;
	position: relative;
}

.login_box {
	width: 1050px;
	height: 1200px;
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
	padding: 5px 25px;
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
	margin: 5px 0px;
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
<meta charset="utf-8">
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
								class="fa fa-chevron-right"></i></a></span> <span>Products <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Products</h2>
				</div>
			</div>
		</div>
	</section>
<body>
<div>
	<form id="frm" action="memberJoin.do" onsubmit="return formCheck()"
		method="post">

		<section class="login">
			<div class="login_box">
				<div class="left">
					<div class="top_link">
						<a href="main.do"><img
							src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download"
							alt="">Return home</a>
					</div>
					<br> <br>


					<table border="1" width="200" height="50">
						<h4>SIGN_UP</h4>
					   <label for="memberId">아이디</label>
            <input type="text" class="form-control" id="memberId"  name="memberId" placeholder="" required style="width: 250px; height: 30px;">
            <div class="invalid-feedback">
              아이디를 입력해주세요
            </div>
            <button type="button" onclick="idChk()" id="btnId" value="No">중복체크</button>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" id="memberPassword" name="memberPassword" placeholder="" value="" required style="width: 250px; height: 30px;">
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="passwordChk">비밀번호 확인</label>
              <input type="password" class="form-control" id="passwordChk" name="passwordChk" placeholder="" value="" required style="width: 250px; height: 30px;">
              <div class="invalid-feedback">
                비밀번호확인을 입력해주세요
              </div>
            </div>
          </div>
			<div class="mb-3">
            <label for="memberName">이름</label>
            <input type="text" class="form-control" id="memberName" name="memberName"placeholder="" required style="width: 250px; height: 30px;">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="memberEmail">이메일</label>
            <input type="email" class="form-control" id="memberEmail" name="memberEmail"placeholder="you@example.com" required style="width: 250px; height: 30px;">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
		<div class="mb-3">
            <label for="memberPhone">전화번호</label>
            <input type="tel" class="form-control" id="memberPhone" name="memberPhone" placeholder="" required>
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="memberAddress">주소</label>
            <div>
            <input type="text" id="sample4_postcode" name="addr1" class="form-control" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample4_roadAddress" name="addr2" class="form-control" placeholder="도로명주소" size="60" ><br>
			<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소"  size="60">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" name="addr3" class="form-control" placeholder="상세주소"  size="60"><br>
			<input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  size="60">
			<input type="hidden" id="sample4_engAddress" placeholder="영문주소"  size="60" ><br>
          </div>
          </div>
          <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
  </div>

					</table><br>
					<input type="submit" value="SIGNUP"
						style="width: 250px; height: 30px;"> <input type="reset"
						value="CANCLE" style="width: 250px; height: 30px;">
				</div>


				<div class="right">
					<div class="right-text">
						<h2 style="color: #FFF5F5; font-weight: bold;">JAKERY</h2>
					</div>
					<div class="right-inductor"></div>

				</div>
			</div>
	</form>
	</body>
</div>
</div>
</form>




</body>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script>
 	
    function formCheck() {  //아이디 중복체크 및 패스워드 동일성 확인
		let pass1 = document.getElementById("memberPassword").value;
		let pass2 = document.getElementById("passwordChk").value;
		let checkId = document.getElementById("btnId").value;
		
		if(checkId == "No") {
			alert("아이디 중복체크를 하세요!!");
			return false;
		}
		
		if(pass1 != pass2){
			alert("패스워드가 일치하지 않습니다.!!!");
			document.getElementById("memberPassword").value="";
			document.getElementById("passwordChk").value="";
			document.getElementById("memberPassword").focus();
			return false;
		}
		
		return true;
	}
	
	function idChk() {  //아이디 중복체크 Ajax로 비교
		let id = document.getElementById("memberId").value;
		let url = 'AjaxMemberIdCheck.do?id='+id;
		fetch(url)
			.then((response)=>response.text())
			.then((data)=>idCheck(data));
	}
	
	function idCheck(str){
		if(str == '1') {
			alert("사용할 수 있는 아이디 입니다. !!");
			document.getElementById("btnId").value = 'Yes';
			document.getElementById("btnId").disabled = true;  //버튼 비활성화
		}else{
			alert("이미 사용하는 아이디 입니다. 다시 입력하세요.");
			document.getElementById("memberId").value="";
			document.getElementById("memberId").focus();
		}
	}
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
         
                document.getElementById("sample4_engAddress").value = data.addressEnglish;
                       
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
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