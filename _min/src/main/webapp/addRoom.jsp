<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>

<style>
input::placeholder {
	font-size: 18px;
	color: #888;
}
</style>

<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>예약화면</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->

<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap"
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


<!-- Form -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>

	<jsp:include page="header.jsp" />
	
	<!-- Start Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md=6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">객실 추가</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="index.html">Home</a></li>
						<li>객실 추가</li>
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
				<!-- content-1 start -->
				<div class="content-right wow fadeInRight" data-wow-delay=".5s">
					<!-- Heading -->
					<h2>객실 등록하기</h2>

					<form action="processAddRoom.jsp" method="post" enctype="multipart/form-data" onsubmit="return CheckAddRoom()">
						<p>
							객실 이름 <input type="text" name="name"
								class="form-control form-control-lg" />
						<p>
							객실 아이디 <input type="text" id="roomId" name="roomId"
								class="form-control" />
			
						<p>
							객실 사진 1<input type="file" name="imagePATH"
								class="form-control form-control-lg" />
					 	<p>
							객실 사진 2<input type="file" name="imagePATH2"
								class="form-control form-control-lg" />
						<p>
							객실 사진 3<input type="file" name="imagePATH3"
								class="form-control form-control-lg" />
						<p>
							객실 설명
							<textarea class="form-control" name="description" id="description" rows="3"></textarea>
						<p>
							객실 한줄 설명 <input type="text" name="briefDescription"
								class="form-control form-control-lg"
								placeholder="ex) 침대타입 더블 | 전망 시티뷰 | 투숙인원 2 명 | 객실면적 353 ㎡" />
						<p>
							침대타입 <br> <input type="checkbox" name="bedType" value="더블">
							더블배드 <input type="checkbox" name="bedType" value="트윈"> 트윈배드
						
						<p>
							투숙인원 <input type="text" name="guestsCount" id="guestsCount"
								class="form-control form-control-lg" placeholder="숫자만 적어주세요" />
						<p>
							전망 <br> 
							<input type="checkbox" name="view" value="시티뷰"> 시티뷰 
							<input type="checkbox" name="view" value="리버뷰"> 리버뷰 
							<input type="checkbox" name="view" value="시티뷰 (전망욕실)"> 시티뷰 (전망욕실)
							<input type="checkbox" name="view" value="리버뷰 (전망욕실)"> 리버뷰 (전망욕실)
						<p>
							객실면적(㎡) <input type="text" name="roomArea" id="roomArea"
								class="form-control form-control-lg" placeholder="ex)40~50 ㎡" />
						<p>
							어메니티 <input type="text" name="amenityList"
								class="form-control form-control-lg"
								placeholder="ex) 케이블 위성 TV 채널 / 무료 생수 1일 2병 / 커피 및 티 메이커 / 무료 일간 신문 / 옷솔" />
						<p>
							체크인 시간 <input type="text" name="checkInTime" id="checkInTime"
								class="form-control form-control-lg" placeholder="ex)11:00" />
						<p>
							체크아웃 시간 <input type="text" name="checkOutTime" id="checkOutTime"
								class="form-control form-control-lg" placeholder="ex)15:00" />
						<p>
							객실 가격 <input type="text" name="roomPrice" id="roomPrice"
								class="form-control form-control-lg" placeholder="숫자만 적어주세요" />


							<!-- End Heading -->
						<div class="button header-button">
							<button type="submit" class="btn">등록하기</button>
						</div>

					</form>
				</div>


			</div>
		</div>

	</section>
	<!-- End About Area -->

	<jsp:include page="footer.jsp" />
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
	<script src="assets/js/addRoom_validation.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

</body>

</html>
