<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>호텔소개</title>
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
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="assets/css/animate.css" />
<link rel="stylesheet" href="assets/css/tiny-slider.css" />
<link rel="stylesheet" href="assets/css/glightbox.min.css" />
<link rel="stylesheet" href="assets/css/main.css" />

</head>

<body>
		

	<%@include file="header.jsp"%>
	<!-- Start Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">호텔 소개</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="index.html">Home</a></li>
						<li>소개</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Start About Area -->
	<section class="about-us section">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-6 col-md-12 col-12">
					<div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<iframe width="560" height="315"
							src="https://www.youtube.com/embed/aAb5jZ2bJus?si=jkzK0ImOQuAhl-BE"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-12">
					<!-- content-1 start -->
					<div class="content-right wow fadeInRight" data-wow-delay=".5s">
						<!-- Heading -->
						<h2>극강의 아름다움, 서경호텔</h2>
						<p>서경호텔은 서울의 중심에 위치한 고급 호텔입니다. 품격 있는 서비스와 편안한 휴식을 제공하며, 현대적인
							시설과 아름다운 전망이 함께 어우러진 곳입니다. 풍부한 음식과 다채로운 편의시설로 편안한 여행을 보장합니다.</p>
						<h3>서경의 정신</h3>
						<p>서경호텔은 고객 중심의 기업 정신을 가지고 있습니다. 우리는 고객들의 만족과 편의를 최우선으로 생각하며,
							항상 더 나은 서비스를 제공하기 위해 노력합니다. 팀원들 간의 협력과 소통을 통해 팀워크를 강화하고, 함께 성장하고
							발전하기 위해 노력합니다. 또한, 지속 가능한 경영을 추구하며 환경 보호와 사회 공헌에도 적극적으로 참여합니다.
							우리는 사회적 책임을 다하고 지역사회와 함께 발전해 나가는데 앞장서겠습니다. 서경호텔은 더 나은 미래를 위해 지속적인
							혁신과 발전을 추구하며, 고객, 직원, 사회 모두에게 긍정적인 가치를 전달하기 위해 노력합니다.</p>
						<!-- End Heading -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End About Area -->

	<!-- Start How Works Area -->
	<section class="how-works section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2 class="wow fadeInUp" data-wow-delay=".4s">찾아오시는길</h2>
						<p class="wow fadeInUp" data-wow-delay=".6s">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3160.459177288475!2d127.010781240987!3d37.61488547214251!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbcf420e2ccbf%3A0x708ebedbe4568403!2z7ISc6rK964yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1715784508431!5m2!1sko!2skr"
								width="500" height="450" style="border: 0;" allowfullscreen=""
								loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						</p>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End How Works Area -->
	<%@ include file="footer.jsp"%>
	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
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