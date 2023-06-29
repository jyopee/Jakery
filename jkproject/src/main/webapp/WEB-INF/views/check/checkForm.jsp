<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
								class="fa fa-chevron-right"></i></a></span> <span>Checkout <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">Checkout</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">


		<div class="container">
			<div class="row mt-5 pt-3 d-flex">
				<div class="col-md-6 d-flex">
					<div class="cart-detail cart-total p-3 p-md-4">
						<h3 class="billing-heading mb-4">Product ImFormation</h3>
						<center>
							<img src="${product.prImgName}" style="width: 180px;">
						</center>
						<br> <label for="firstname">Product</label> <input
							type="text" class="form-control" value="${product.prName}">
						<label for="firstname">Amount</label> <input type="text"
							class="form-control" value="${cart.prAmount}"> <label
							for="firstname">Price</label> <input type="text"
							class="form-control" value="${product.prPrice}">

						<hr>
						<p class="d-flex total-price">
							<span>Total</span> <span>${cart.prPrice}</span>
						</p>

					</div>
				</div>
			</div>

			<div class="row mt-5 pt-3 d-flex">
				<div class="col-md-6 d-flex">
					<div class="cart-detail cart-total p-3 p-md-4">
						<form action="#" class="billing-form">
							<h3 class="mb-4 billing-heading">주문자정보</h3>
							<div class="row align-items-end">
								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname">Name</label> <input type="text"
											class="form-control" value="${memberName}">


									</div>
								</div>

								<div class="w-100"></div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="streetaddress">Street Address</label><br> <input
											type="text" id="sample6_postcode" placeholder="우편번호">
										<input type="button" onclick="sample6_execDaumPostcode()"
											value="우편번호 찾기"><br> <input type="text"
											id="sample6_address" placeholder="주소"><br> <input
											type="text" id="sample6_detailAddress" placeholder="상세주소">
										<input type="text" id="sample6_extraAddress"
											placeholder="참고항목">


										<script
											src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
											function sample6_execDaumPostcode() {
												new daum.Postcode(
														{
															oncomplete : function(
																	data) {
																// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

																// 각 주소의 노출 규칙에 따라 주소를 조합한다.
																// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																var addr = ''; // 주소 변수
																var extraAddr = ''; // 참고항목 변수

																//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
																if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
																	addr = data.roadAddress;
																} else { // 사용자가 지번 주소를 선택했을 경우(J)
																	addr = data.jibunAddress;
																}

																// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
																if (data.userSelectedType === 'R') {
																	// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																	// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																	if (data.bname !== ''
																			&& /[동|로|가]$/g
																					.test(data.bname)) {
																		extraAddr += data.bname;
																	}
																	// 건물명이 있고, 공동주택일 경우 추가한다.
																	if (data.buildingName !== ''
																			&& data.apartment === 'Y') {
																		extraAddr += (extraAddr !== '' ? ', '
																				+ data.buildingName
																				: data.buildingName);
																	}
																	// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																	if (extraAddr !== '') {
																		extraAddr = ' ('
																				+ extraAddr
																				+ ')';
																	}
																	// 조합된 참고항목을 해당 필드에 넣는다.
																	document
																			.getElementById("sample6_extraAddress").value = extraAddr;

																} else {
																	document
																			.getElementById("sample6_extraAddress").value = '';
																}

																// 우편번호와 주소 정보를 해당 필드에 넣는다.
																document
																		.getElementById('sample6_postcode').value = data.zonecode;
																document
																		.getElementById("sample6_address").value = addr;
																// 커서를 상세주소 필드로 이동한다.
																document
																		.getElementById(
																				"sample6_detailAddress")
																		.focus();
															}
														}).open();
											}
										</script>
									</div>
								</div>
							</div>

							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">Phone</label> <input type="text"
										class="form-control" value="${memberPhone}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">Email Address</label> <input
										type="text" class="form-control" value="${memberEmail}">
								</div>
							</div>

						</form>
						<!-- END -->

						<div>쇼핑몰이용약관</div>
						<br>
						<!--
 onsubmit 이벤트는 form이 submit이 될 때 발생함.
 실행된 함수가 false를 리턴하면 submit을 하지 않음.
-->
						<form action="memberForm.jsp" onsubmit="return send(this)">

							<table border="0" cellspacing="0" cellpadding="2">
								<tr align="center" height="10">
									<td>
										<!-- 여기서는 textarea를 넣었으나 div태그나 iframe 형태로도 넣을 수 있음 --> <textarea
											cols="55" rows="14" readonly>Community 서비스약관 (2005. 7. 18 부터 유효)

제1조(목적 등)

 
① Community (www.soldesk.co.kr) 서비스 약관(이하 "본 약관"이라 합니다)은 이용자가 ㈜ www_pilot(이하 "Community"이라 합니다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)를 이용함에 있 어 이용자와 "Community"의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
 
② 이용자가 되고자 하는 자가 "Community"이 정한 소정의 절차를 거쳐서 "등록하기" 단추를 누르면 본 약관에 동의하는 것 으로 간주합니다. 본 약관에 정하는 이외의 이용자와 "Community"의 권리, 의무 및 책임사항에 관해서는 전기통신사업법 기 타 대한민국의 관련 법령과 상관습에 의합니다. 
 

제2조(이용자의 정의)

 
① 이용자"란 "Community"에 접속하여 본 약관에 따라 "Community" 회원으로 가입하여 "Community"이 제공하는 서비스를 받는 자를 말합니다. 
 

제3조(회원 가입)

 
① 이용자가 되고자 하는 자는 "Community"이 정한 가입 양식에 따라 회원정보를 기입하고 "등록하기" 단추를 누르는 방법으로 회원 가입을 신청합니다. 
 
② "Community"은 제1항과 같이 회원으로 가입할 것을 신청한 자가 다음 각 호에 해당하지 않는 한 신청한 자를 회원으로 등록합니다. 
 
 1. 가입신청자가 본 약관 제6조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우. 다만 제6조 제3항에 의한 회원자 격 상실 후 3년이 경과한 자로서 "Community"의 회원재가입 승낙을 얻은 경우에는 예외로 합니다. 
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우 
3. 기타 회원으로 등록하는 것이 "Community"의 기술상 현저히 지장이 있다고 판단되는 경우 
 
③ 회원가입계약의 성립시기는 "Community"의 승낙이 가입신청자에게 도달한 시점으로 합니다. 
 
④ 회원은 제1항의 회원정보 기재 내용에 변경이 발생한 경우, 즉시 변경사항을 정정하여 기재하여야 합니다. 
 

제4조(서비스의 제공 및 변경)

 
① "Community"은 이용자에게 아래와 같은 서비스를 제공합니다.
1. 한메일넷 서비스
2. 인터넷동호회 카페 이용서비스
3. 칼럼 서비스 
4. 메시지 전송, 메일 통보, 친구찾기, 1:1 채팅, 실시간 뉴스, 증권정보의 제공 등을 내용으로 하는 메신저 서비스
5. 이동통신(핸드폰/PCS)으로 문자메세지를 발송할 수 있는 SMS서비스를 비롯한 무선인터넷 서비스 
6. 사람찾기 서비스. 다만, 사람찾기 서비스를 통하여 자신의 이용자정보가 공개되기를 원하지 않는 이용자는 가입시 또는 가입후 이용자정보관리 화면에서 비공개로 설정할 수 있습니다.
7. 회원을 위한 섹션 및 컨텐트 서비스, 맞춤 서비스
8. 기타 "Community"이 자체 개발하거나 다른 회사와의 협력계약 등을 통해 회원들에게 제공할 일체의 서비스
 
② "Community"은 그 변경될 서비스의 내용 및 제공일자를 제7조 제2항에서 정한 방법으로 이용자에게 통지하고, 제1항에 정한 서비스를 변경하여 제공할 수 있습니다.
 
③ "Community"은 "한메일넷 서비스"의 원활한 수행을 저해하는 제3자와 이용자간 혹은 이용자간 스팸메일, 대량메일 등 의 전송행위를 방지하기 위하여 여러가지 기술적, 제도적 정책(예: 온라인 우표제, 스팸메일방지정책 등)을 시행할 수 있으며, 이 로 인하여 "이용자"는 "Community"이 제공하는 "한메일넷 서비스" 이용에 제한을 받을 수 있습니다.(2001년 12 월 18일자 변경) 
 

제5조(서비스의 중단)

 
① "Community"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제 공을 일시적으로 중단할 수 있고, 새로운 서비스로의 교체 기타 "Community"이 적절하다고 판단하는 사유에 기하여 현재 제공 되는 서비스를 완전히 중단할 수 있습니다. 
 
② 제1항에 의한 서비스 중단의 경우에는 "Community"은 제7조 제2항에서 정한 방법으로 이용자에게 통지합니다. 다 만, "Community"이 통제할 수 없는 사유로 인한 서비스의 중단(시스템 관리자의 고의, 과실이 없는 디스크 장애, 시스 템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 그러하지 아니합니다. 
 

제6조(이용자 탈퇴 및 자격 상실 등)

 
① 이용자는 "Community"에 언제든지 자신의 회원 등록을 말소해 줄 것(이용자 탈퇴)을 요청할 수 있으며 "Community"은 위 요청을 받은 즉시 해당 이용자의 회원 등록 말소를 위한 절차를 밟습니다. 
 
② 이용자가 다음 각 호의 사유에 해당하는 경우, "Community"은 이용자의 회원자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있습니다. 
 
 1. 가입 신청 시에 허위 내용을 등록한 경우 
2. 다른 사람의 "서비스" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우 
3. "서비스"를 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 
 
③ "Community"이 이용자의 회원자격을 상실시키기로 결정한 경우에는 회원등록을 말소합니다. 이 경우 이용자인 회원에게 회원 등록 말소 전에 이를 통지하고, 말소통지를 받은 날로부터 30일 이내에 소명할 기회를 부여합니다. (2005년 7월 18일자 변 경) 
 
④ "이용자"가 본 약관에 의해서 회원 가입 후 "서비스"를 이용하는 도중, 연속하여 3개월 동안 "서비스"를 이용하기 위 해 log-in한 기록이 없는 경우, "Community"은 이용자로 하여금 "한메일넷 서비스" 상에서 전자우편을 수령할 수 없도 록 제한을 가할 수 있습니다. (2001년 12월 18일자 변경)
 
⑤ "이용자"가 본 약관에 의해서 회원 가입 후 "서비스"를 이용하는 도중, 연속하여 1년 동안 "서비스"를 이용하기 위 해 log-in한 기록이 없는 경우, "Community"은 이용자의 회원자격을 상실시킬 수 있습니다.(2002년 6월28일자 변 경)  

제7조(이용자에 대한 통지)

 
① "Community"이 특정 이용자에 대한 통지를 하는 경우 "Community"이 부여한 메일주소로 할 수 있습니다. 
 
② "Community"이 불특정다수 이용자에 대한 통지를 하는 경우 칠(7)이상 "Community" 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. 
 

제8조(이용자의 개인정보보호)

 
① "Community"은 맞춤서비스 제공을 목적으로, 이용자가 "Community"회원으로 가입하는 시점에서, 이름, 성별, 주소, 연락처, 생년월일을 필수적인 개인정보로 수집합니다. (2005년 7월 18일자 신설) 
 
② "Community"은 관련법령이 정하는 바에 따라서 이용자 등록정보를 포함한 이용자의 개인정보를 보호하기 위하여 노력합니 다. 이용자의 개인정보보호에 관해서는 관련법령 및 "Community"이 정하는 "개인정보보호정책"에 정한 바에 의합니다. 
 

제9조("Community"의 의무)

 
① "Community"은 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 본 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하기 위해서 노력합니다. 
 
② "Community"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 구축합니다. 
 
③ "Community"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다. 
 
④ "Community"은 이용자가 서비스를 이용함에 있어 "Community"의 고의 또는 중대한 과실로 인하여 입은 손해를 배상할 책임을 부담합니다. 
 

제10조(이용자의 ID 및 비밀번호에 대한 의무)

 
① "Community"이 관계법령, "개인정보보호정책"에 의해서 그 책임을 지는 경우를 제외하고, 자신의 ID와 비밀번호에 관한 관리책임은 각 이용자에게 있습니다. 
 
② 이용자는 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다. 
 
③ 이용자는 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "Community"에 통보하고 "Community"의 안내가 있는 경우에는 그에 따라야 합니다. 
 

제11조(이용자의 의무)

 
① 이용자는 다음 각 호의 행위를 하여서는 안됩니다. 
 
1. 회원가입신청 또는 변경시 허위내용을 등록하는 행위 
2. "Community"에 게시된 정보를 변경하는 행위
3. "Community" 기타 제3자의 인격권 또는 지적재산권을 침해하거나 업무를 방해하는 행위 
4. 다른 회원의 ID를 도용하는 행위 
5. 정크메일(junk mail), 스팸메일(spam mail), 행운의 편지(chain letters), 피라미드 조직에 가입 할 것을 권유하는 메일, 외설 또는 폭력적인 메시지 ·화상·음성 등이 담긴 메일을 보내거나 기타 공서양속에 반하는 정보를 공개 또 는게시하는 행위. 
6. 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)의 전송 또는 게시하는 행위
7. 다음의 직원이나 다음 서비스의 관리자를 가장하거나 사칭하여 또는 타인의 명의를 모용하여 글을 게시하거나 메일을 발송하는 행위
8. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 전자우편으로 발송하는 행위
9. 스토킹(stalking) 등 다른 이용자를 괴롭히는 행위
10. 다른 이용자에 대한 개인정보를 그 동의 없이 수집,저장,공개하는 행위
11. 불특정 다수의 자를 대상으로 하여 광고 또는 선전을 게시하거나 스팸메일을 전송하는 등의 방법으로 "Community"의 서비스를 이용하여 영리목적의 활동을 하는 행위
12. "Community"이 제공하는 서비스에 정한 약관 기타 서비스 이용에 관한 규정을 위반하는 행위
 
② 제1항에 해당하는 행위를 한 이용자가 있을 경우 "Community"은 본 약관 제6조 제2, 3항에서 정한 바에 따라 이용자의 회원자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있습니다.
 
③ 이용자는 그 귀책사유로 인하여 "Community"이나 다른 이용자가 입은 손해를 배상할 책임이 있습니다.
 
④ 민법상 미성년자인 이용자가 유료 콘텐츠 이용을 위해 결제하고자 할 경우 미성년자인 이용자는 법정대리인의 사전 동의를 얻어야 합니다.(2004년 10월 11일자 신설)
 

제12조(공개게시물의 삭제)

 
① 이용자의 공개게시물의 내용이 다음 각 호에 해당하는 경우 "Community"은 이용자에게 사전 통지 없이 해당 공개게시물을 삭제할 수 있고, 해당 이용자의 회원 자격을 제한, 정지 또는 상실시킬 수 있습니다. 
 1. 다른 이용자 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용
2. 공서양속에 위반되는 내용의 정보, 문장, 도형 등을 유포하는 내용
3. 범죄행위와 관련이 있다고 판단되는 내용
4. 다른 이용자 또는 제3자의 저작권 등 기타 권리를 침해하는 내용
5. 기타 관계 법령에 위배된다고 판단되는 내용 
6. 종교적, 정치적 분쟁을 야기하는 내용으로서, 이러한 분쟁으로 인하여 Community의 업무가 방해되거나 방해되리라고 판단되는 경우 (2003년 1월 11일자 신설)  
② 이용자의 공개게시물로 인한 법률상 이익 침해를 근거로, 다른 이용자 또는 제3자가 이용자 또는 "Community"을 대상으 로 하여 민형사상의 법적 조치(예:고소, 가처분신청, 손해배상청구소송)를 취하는 동시에 법적 조치와 관련된 게시물의 삭제를 요청해 오는 경우, "Community"은 동 법적 조치의 결과(예: 검찰의 기소, 법원의 가처분결정, 손해배상판결)가 있을 때까지 관 련 게시물에 대한 접근을 잠정적으로 제한할 수 있습니다. (2003년 1월 11일자 신설) 
  

제13조(저작권의 귀속 및 이용제한)

 
① "Community"이 작성한 저작물에 대한 저작권 기타 지적재산권은 "Community"에 귀속합니다. 
 
② 이용자는 "Community"을 이용함으로써 얻은 정보를 "Community"의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. 
 

제14조(약관의 개정)

 
① "Community"은 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다. 
 
② 다만, 개정 내용이 "이용자"에게 불리할 경우에는 적용일자 삼십(30)일 이전부터 적용일자 전일까지 공지합니다. (2005년 7월 18일자 변경) 
 
③ "이용자"는 변경된 약관에 대해 거부할 권리가 있습니다. "이용자"는 변경된 약관이 공지된 후 십오(15)일 이내에 거부의사 를 표명할 수 있습니다. "이용자"가 거부하는 경우 "Community"은 당해 "이용자"와의 계약을 해지할 수 있습니다. 만 약 "이용자"가 변경된 약관이 공지된 후 십오(15)일 이내에 거부의사를 표시하지 않는 경우에는 동의하는 것으로 간주합니 다. (2001년 12월 18일자 변경) 
 

제15조(재판관할)

 
 "Community"과 이용자간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 민사소송법상의 관할을 가지는 대한민국의 법원에 제기합니다. (2001년 12월 18일자 변경) 


부 칙

 
본 약관은 2005. 7. 18. 부터 적용하고, 2004. 10. 11.부터 적용되던 종전의 약관은 본 약관으로 대체합니다. 
            </textarea>
									</td>
								</tr>
							</table>
							<div>
								<input type="checkbox" name="agree" required="required" /> 약관에
								동의합니다
							</div>
						</form>

						<script>
							function send(f) {
								if (f.agree.checked == true) {
									return true;
								} else {
									alert("약관에 동의해주시기 바랍니다.");
									return false;
								}//if end
							}//send end
						</script>

						<div class="row mt-5 pt-3 d-flex">

							<div class="col-md-6"></div>
						</div>
					</div>
					<!-- .col-md-8 -->
				</div>
			</div>
	</section>

	<div class="cart-detail p-3 p-md-4">
		<h3 class="billing-heading mb-4">Payment Method</h3>
		<div class="form-group">
			<div class="col-md-12">
				<div class="radio">
					<label><input type="radio" name="optradio" class="mr-2">
						Direct Bank Tranfer</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-12">
				<div class="radio">
					<label><input type="radio" name="optradio" class="mr-2">
						Check Payment</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-12">
				<div class="radio">
					<label><input type="radio" name="optradio" class="mr-2">
						Paypal</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-12">
				<div class="checkbox">
					<label><input type="checkbox" value="" class="mr-2">
						I have read and accept the terms and conditions</label>
				</div>
			</div>
		</div>
		<form action="kakao.do" method="post" >
			<p>
				<input type="hidden" id="memberId" name="memberId"
					value="${memberId}"> <input type="hidden" id="prouductId"
					name="prouductId" value="${product.prId}"> <input
					type="hidden" id="prouductAmount" name="prouductAmount"
					value="${cart.prAmount}"> <a href="main.do"
					class="btn btn-primary py-3 px-4">Place an order</a>
			</p>
			<p>
				<input type="submit" class="btn btn-primary py-3 px-4" value="kakao">
			</p>
		</form>
	</div>



	<div class="container-fluid px-0 py-5 bg-black">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<p class="mb-0" style="color: rgba(255, 255, 255, .5);">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib.com</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</div>
	</footer>



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