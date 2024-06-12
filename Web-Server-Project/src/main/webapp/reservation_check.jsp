<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="dbconn.jsp" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>예약 조회</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->

<!-- Web Font -->
<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="assets/css/animate.css" />
<link rel="stylesheet" href="assets/css/tiny-slider.css" />
<link rel="stylesheet" href="assets/css/glightbox.min.css" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
    <jsp:include page="header.jsp" />
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">예약 조회</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>예약 조회</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Items Grid Area -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div>
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">예약확인</h2>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <!-- 예약 ID 입력 폼 -->
                <form action="reservation_details.jsp" method="get" class="wow fadeInUp" onsubmit="return validateForm()">
                    <div class="form-group">
                    	<br>
                        <label for="reservationId">예약 ID:</label>
                        <input type="text" class="form-control" id="reservationId" name="reservationId" placeholder="예약 ID를 입력하세요">
                    </div>
                    <br>
                    <div class="button header-button">
                    <button type="submit" class="btn btn-primary">조회</button>
                    </div>
                </form>
                </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover"> <i class="lni lni-chevron-up"></i></a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/count-up.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
        function validateReservationId() {
            var reservationIdInput = document.getElementById('reservationId');
            var reservationIdValue = reservationIdInput.value.trim();
            var numericRegex = /^[0-9]+$/;

            if (reservationIdValue === '') {
                alert('예약 ID를 입력하세요.');
                reservationIdInput.focus();
                return false;
            } else if (!numericRegex.test(reservationIdValue)) {
                alert('예약 ID는 숫자만 입력 가능합니다.');
                reservationIdInput.focus();
                return false;
            }
            return true;
        }
	</script>
	
    <script>
        function validateForm() {
            return validateReservationId();
        }
    </script>
</body>
</html>
