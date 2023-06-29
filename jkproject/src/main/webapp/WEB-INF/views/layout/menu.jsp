<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="wrap">
	<div class="container">
		<div class="row">
			<div class="col-md-6 d-flex align-items-center"></div>
			<div class="col-md-6 d-flex justify-content-md-end">
				<div class="social-media mr-4"></div>
				<div class="reg">
				
					<p class="mb-0">
					
						<c:if test="${empty memberId }">
							<a href="contract.do" class="mr-2">SIGN_UP</a>
						</c:if>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<c:if test="${empty memberId }">
							<a href="login.do">LOGIN</a>
						</c:if>
						<c:if test="${not empty memberId }">
							<a href="memberLogout.do">LOGOUT</a>
						</c:if>

					
					</p>
					
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 장바구니 -->
     <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
       <div class="container">
         <a class="navbar-brand" href="main.do">Jakery</a>
         <div class="order-lg-last btn-group">
          <a href="cart.do" class="btn-cart dropdown-toggle dropdown-toggle-split"  aria-haspopup="true" aria-expanded="false">
             <span class="flaticon-shopping-bag"></span>
             
             
          </a>   
          
            <!-- 장바구니 담긴 상품들 -->
            <div class="dropdown-menu dropdown-menu-right">
               <div class="dropdown-item d-flex align-items-start" href="cart.do">
                  <div class="img" style="background-image: url(images/prod-1.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Bacardi 151</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img" style="background-image: url(images/prod-2.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Jim Beam Kentucky Straight</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity:
                           02</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img" style="background-image: url(images/prod-3.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Citadelle</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <a class="dropdown-item text-center btn-link d-block w-100"
                  href="cart.do"> View All <span
                  class="ion-ios-arrow-round-forward"></span>
               </a>
            </div>
         </div>


		<!-- 정체모름 -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="main.do" class="nav-link">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown04"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">BOARD</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item" href="notice.do">NOTICE</a> <a
							class="dropdown-item" href="qnaPageList.do">QnA</a> <a
							class="dropdown-item" href="reviewPageList.do">REVIEW</a>
					</div></li>
				<c:if test="${not empty memberId }">
					<li class="nav-item"><a href="myPageForm.do" class="nav-link">MY
							PAGE</a></li>

					<li class="nav-item"><a href="contact.do" class="nav-link">CONTACT</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>
