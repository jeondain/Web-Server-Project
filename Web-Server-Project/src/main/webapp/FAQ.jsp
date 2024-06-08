<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>FAQ</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->

<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="./assets/css/animate.css" />
<link rel="stylesheet" href="./assets/css/tiny-slider.css" />
<link rel="stylesheet" href="./assets/css/glightbox.min.css" />
<link rel="stylesheet" href="./assets/css/main.css" />
<link rel="stylesheet" href="./assets/css/FAQ.css" />

</head>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var items = document.querySelectorAll('.faq-question');
        items.forEach(function(item) {
            item.addEventListener('click', function() {
                var answer = this.nextElementSibling;
                if (answer.style.display === "none" || answer.style.display === "") {
                    answer.style.display = "block";
                } else {
                    answer.style.display = "none";
                }
            });
        });
    });
</script>
</head>
<body>

<%@ include file="header.jsp" %>

	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- /End Preloader -->
	
	<!-- Start Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">자주 묻는 질문 (FAQ)</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="FAQ.jsp">문의</a></li>
						<li>자주 묻는 질문</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<br/>
	<br/>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h2 class="wow fadeInUp" data-wow-delay=".4s">
						자주 묻는 질문 (FAQ)
					</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="faq-container">
	    <div class="faq-item">
	        <div class="faq-question">Q1: 회원 가입은 어떻게 하나요?</div>
	        <div class="faq-answer">A: 회원 가입은 홈페이지 상단의 "회원가입" 버튼을 클릭하여 진행하시면 됩니다.</div>
	    </div>
	    <div class="faq-item">
	        <div class="faq-question">Q2: 비밀번호를 잊어버렸어요. 어떻게 해야 하나요?</div>
	        <div class="faq-answer">A: 로그인 페이지에서 "비밀번호 찾기" 링크를 클릭하시면, 비밀번호를 재설정할 수 있는 안내를 받으실 수 있습니다.</div>
	    </div>
	    <div class="faq-item">
	        <div class="faq-question">Q3: 회원 정보를 어떻게 수정하나요?</div>
	        <div class="faq-answer">A: 로그인 후 "마이페이지" 에서 회원 정보를 수정할 수 있습니다.</div>
	    </div>
	    <div class="faq-item">
	        <div class="faq-question">Q4: 문의 사항이 있습니다. 어디로 연락하면 되나요?</div>
	        <div class="faq-answer">A: 홈페이지 상단의 "1:1 문의하기" 를 통해 문의하실 수 있습니다.</div>
	    </div>
	        <div class="faq-item">
	        <div class="faq-question">Q5: 회원 탈퇴는 어떻게 하나요?</div>
	        <div class="faq-answer">A: "마이페이지" 에서 회원 탈퇴 메뉴를 선택하시면 됩니다. 탈퇴 시 모든 정보가 삭제되므로 신중히 결정해 주세요.</div>
	    </div>
	    <div class="faq-item">
	        <div class="faq-question">Q6: 결제 수단은 어떤 것이 있나요?</div>
	        <div class="faq-answer">A: 신용카드, 체크카드, 계좌이체, 휴대폰 결제 등 다양한 결제 수단을 제공합니다.</div>
	    </div>
	    <div class="faq-item">
	        <div class="faq-question">Q7: 환불은 어떻게 하나요?</div>
	        <div class="faq-answer">A: 예약일로부터 1일 전까지 "마이페이지" 에서 환불 신청을 하실 수 있습니다. 자세한 절차는 고객센터에 문의하세요.</div>
	    </div>
	</div>
	
	<%@ include file="footer.jsp" %>

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/count-up.min.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
