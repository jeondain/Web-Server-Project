<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>예약 확인</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->

<!-- Web Font -->
<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
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
                        <h1 class="page-title">예약 확인</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>예약 확인</li>
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
                <%
                    Integer reservationId = (Integer) session.getAttribute("reservationId");
                    
                    if (reservationId != null) {
                %>
                <br>
                <h5 class="wow fadeInUp" > 예약 번호 <%= reservationId %> 로 예약 완료 되었습니다.</h5>
                <%
                        session.removeAttribute("reservationId");
                        
                    } else {
                %>
                <br>
                <p class="wow fadeInUp">예약 정보가 없습니다.</p>
                <%
                    }
                %>
                <br><br>
                <div class="wow fadeInUp">
                <div class="button header-button">
                    <a href="index.jsp" class="btn">메인화면으로</a>
                </div>
                <div class="button header-button">
                    <a href="reservation_check.jsp" class="btn">내 예약 검색하기</a>
                </div>
                </div>
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
</body>
</html>
