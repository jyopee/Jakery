<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<style>

*{margin: 0;padding: 0;box-sizing: border-box}
body{background-color: #f7f7f7;}
ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}

#joinForm{width: 460px;margin: 0 auto;}
ul.join_box{border: 1px solid #ddd;background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
.footBtwrap{margin-top: 15px;}
.footBtwrap>li{float: left;width: 50%;height: 60px;}
.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
.fpmgBt1{background-color: #fff;color:#888}
.fpmgBt2{background-color: lightsalmon;color: #fff}
.ftco-navbar-light {
    background: transparent !important;
    position: absolute; 
    top: 35px;
    left: 0;
    right: 0;
    z-index: 3;
    padding: 0 0;
    }
</style>
</head>
<div class="collapse navbar-collapse" id="ftco-nav">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
		<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">Products</a>
			<div class="dropdown-menu" aria-labelledby="dropdown04">
				<a class="dropdown-item" href="product.html">Products</a> <a
					class="dropdown-item" href="product-single.html">Single Product</a>
				<a class="dropdown-item" href="cart.html">Cart</a> <a
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
				<h2 class="mb-0 bread">Login Page</h2>
			</div>
		</div>
	</div>
</section>
<form action="memberJoinForm.do" id="joinForm" onsubmit="return checked()" method="post">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chk1"> 
                        </li>
                    </ul>
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chk2">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
                <li><button class="fpmgBt1" type="button" onclick="location.href='main.do'">비동의</button></li>
                <li><button class="fpmgBt2" type="submit">동의</button></li>
            </ul>
        </form>
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

    
        
 <script>
 window.onload = function () {
	 const checkAll = document.getElementById('chkAll');
	 const chks = document.getElementsByName('chk');  
	 const chkBoxLength = chks.length;
	  
	 checkAll.addEventListener('click', function(event) {
	     if(event.target.checked)  {
	         chks.forEach(function(value){
	         value.checked = true;
	     })
	     }else {
	        chks.forEach(function(value){
	        value.checked = false;
	     })
	  }
	   });
	 for (chk of chks){
	     chk.addEventListener('click', function() {
	         let count = 0;
	         chks.forEach(function(value){
	             if(value.checked == true){
	                 count++;
	             }
	         })
	         if(count !== chkBoxLength){
	             checkAll.checked = false;
	         }else{
	             checkAll.checked = true;
	         }
	       })
	 }
}
 
 function checked() {
	  
	  // 1. checkbox element를 찾습니다.
	  const chk1 = document.getElementById("chk1");
	  const chk2 = document.getElementById("chk2");

		if(chk1.checked == true && chk2.checked == true){
			console.log(chk1.checked);
			console.log(chk2.checked);
			return true
		}else{
			alert("필수체크 항목을 확인해주세요!!");
			console.log(chk1.checked);
			console.log(chk2.checked);
			return false;	
			
		}
		
	 	
	  
	}

 
 </script>
</body>
</html>   