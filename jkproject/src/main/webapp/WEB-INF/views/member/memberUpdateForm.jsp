<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
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
	
	 <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원정보수정</h4>
        <form id="frm" method="post">
        <div class="mb-3">
            <label for="memberId">아이디</label>
            <input type="text" class="form-control" id="memberId"  name="memberId" placeholder="" readonly="readonly" value= "${memberId }">
            <div class="invalid-feedback">
              아이디를 입력해주세요
            </div>
           
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" id="memberPassword" name="memberPassword" placeholder="" value="${password}" required>
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="passwordChk">비밀번호 확인</label>
              <input type="password" class="form-control" id="passwordChk2" name="passwordChk2" placeholder="" value="${password}" required>
              <div class="invalid-feedback">
                비밀번호확인을 입력해주세요
              </div>
            </div>
          </div>
			<div class="mb-3">
            <label for="memberName">이름</label>
            <input type="text" class="form-control" id="memberName" name="memberName"placeholder="" value="${memberName}">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="memberEmail">이메일</label>
            <input type="email" class="form-control" id="memberEmail" name="memberEmail"  >
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
		<div class="mb-3">
            <label for="memberPhone">전화번호</label>
            <input type="tel" class="form-control" id="memberPhone" name="memberPhone"  placeholder="" >
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
          <input type="submit" value="수정" onclick= "passwordChk()">&nbsp;&nbsp;
          <input type="submit" value="탈퇴" onclick= "delConfirm()">&nbsp;&nbsp;
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 YD</p>
    </footer>
  </div>
  
  
  <div>
  
  </div>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	function delConfirm(url){
		var answer;
		answer = confirm("회원탈퇴를 하시겠습니까?")
		
		if(answer == true){
			frm.action = "memberDelete.do"		
			return true;
		}else{
			return false;
		}
		frm.submit();
	}
	
	function passwordChk() {  //아이디 중복체크 및 패스워드 동일성 확인
		let pass1 = document.getElementById("memberPassword").value;
		let pass2 = document.getElementById("passwordChk2").value;
		if(pass1 == ""){
			alert("비밀번호를 입력해주세요");
			document.getElementById("memberPassword").value="";
			document.getElementById("memberPassword").focus();
			return false;
		}if(pass1 != pass2){
			alert("패스워드가 일치하지 않습니다.!!!");
			document.getElementById("memberPassword").value="";
			document.getElementById("passwordChk").value="";
			document.getElementById("memberPassword").focus();
			return false;
		}
		else{
			alert("비밀번호가 수정되었습니다.")
			frm.action = "memberUpdate.do"
			return true;
		}
		frm.submit();
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