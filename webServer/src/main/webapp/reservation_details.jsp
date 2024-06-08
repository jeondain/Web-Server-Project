<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="dbconn.jsp" %>
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
                        <h1 class="page-title">조회 결과</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>조회 결과</li>
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
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">조회내역</h2>
                    </div>
                </div>
            </div>
            <div class="single-head">
              
                <br>
                <%
                    String reservationId = request.getParameter("reservationId");
                    if (reservationId != null && !reservationId.isEmpty()) {
                        PreparedStatement pstmt = null;
                        ResultSet rs = null;
                        String sql = "SELECT * FROM Reservation WHERE id = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, reservationId);
                        rs = pstmt.executeQuery();
                        if (rs.next()) {
                %>
                <table class="table">
                    <thead>
                        <tr>
                            <th>예약 번호</th>
                            <th>회원 ID</th>
                            <th>입실/퇴실 날짜</th>
                            <th>인원수</th>
                            <th>객실</th>
                            <th>모닝콜 서비스</th>
                            <th>스파 이용권</th>
                            <th>침대 추가</th>
                            <th>인원 추가</th>
                            <th>요청사항</th>
                            <th>총 결제금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= rs.getString("id") %></td>
                            <td><%= rs.getString("memberId") %></td>
                            <td><%= rs.getString("checkInOut") %></td>
                            <td><%= rs.getString("guests") %> 명</td>
                            <td><%= rs.getString("roomType") %></td>
                            <td><%= rs.getString("wakeUpCall") %></td>
                            <td><%= rs.getString("spa") %></td>
                            <td><%= rs.getString("extraBed") %></td>
                            <td><%= rs.getString("addGuests") %></td>
                            <td><%= rs.getString("requests") %></td>
                            <td><%= rs.getString("totalPrice") %> 원</td>
                        </tr>
                    </tbody>
                </table>
                <%
                        } else {
                %>
                <p>예약 ID에 해당하는 결과가 없습니다.</p>
                <%
                        }
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    }
                %>
               <div class="button header-button">
                    <a href="reservation_check.jsp" class="btn">이전화면으로</a>
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
