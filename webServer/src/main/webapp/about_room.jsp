<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>예약화면</title>
<style>
section {
	padding: 0px;
	margin: 20px 0;
	background-color: #fff;
}

.slide-container {
	max-width: 800px;
	margin: 0 auto;
	margin-bottom: 30px;
	overflow: hidden;
}

.slide {
	display: none;
}

img {
	width: 100%;
	height: auto;
}

.btn {
	display: inline-block;
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 5px;
}

.btn:hover {
	background-color: #555;
}
</style>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.svg" />

<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700;800;900&display=swap"
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

	<%@ include file="header.jsp"%>

	<%
	String roomId = request.getParameter("id");
	if (roomId != null && !roomId.isEmpty()) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webServerDB", "root", "9999");
			String sql = "SELECT * FROM Room WHERE room_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, roomId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
	%>
	
	<!-- Start Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">객실 소개</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="index.html">Home</a></li>
						<li><%=rs.getString("room_name")%></li>
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

					<div class="slide-container">
						<div class="slide">
							<img src="./resource/image/<%=rs.getString("room_image")%>"
								alt="Room 1">
						</div>
						<div class="slide">
							<img src="./resource/image/<%=rs.getString("room_image2")%>"
								alt="Room 2">
						</div>
						<div class="slide">
							<img src="./resource/image/<%=rs.getString("room_image3")%>"
								alt="Room 3">
						</div>
						<!-- Add more slides as needed -->
					</div>
					<br>
					<hr>

					<section>
						<h2><%=rs.getString("room_name")%></h2>
						<p><%=rs.getString("room_description")%></p>
					</section>
					<div class="button header-button">
						<a href="javascript:void(0)" class="btn">예약하기</a>
					</div>

					<hr>
					<section id="rooms">
						<h3>객실 소개</h3>
						<ul class="rooms-list">
							<li><strong>가격</strong> | <%=rs.getInt("price")%></li>
							<li><strong>침대타입</strong> | <%=rs.getString("bed_type")%></li>
							<li><strong>투숙인원</strong> | <%=rs.getString("guests")%>명</li>
							<li><strong>전망</strong> | <%=rs.getString("view_type")%></li>
							<li><strong>객실면적</strong> | <%=rs.getString("room_area")%></li>
						</ul>
					</section>
					<section id="amenities">
						<h3>어메니티</h3>
						<ul class="amenities-list">
							<li><%=rs.getString("amenities")%></li>
						</ul>
					</section>
					<section id="info">
						<h3>이용 안내</h3>
						<p>
							<strong>체크인:</strong>
							<%=rs.getString("checkin_time")%>
						</p>
						<p>
							<strong>체크아웃:</strong>
							<%=rs.getString("checkout_time")%>
						</p>
					</section>
					<%
					} else {
					out.println("<p>Room not found.</p>");
					}
					} catch (Exception e) {
					e.printStackTrace();
					} finally {
					if (rs != null)
					rs.close();
					if (pstmt != null)
					pstmt.close();
					if (conn != null)
					conn.close();
					}
					} else {
					out.println("<p>Invalid room ID.</p>");
					}
					%>
				</div>
			</div>
		</div>
	</section>
	<!-- End About Area -->

	<%@ include file="footer.jsp"%>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i></a>

	<!-- ========================= JS here ========================= -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/tiny-slider.js"></script>
	<script src="assets/js/glightbox.min.js"></script>
	<script src="assets/js/count-up.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script type="text/javascript">
		let slideIndex = 0;
		showSlides();

		function showSlides() {
			let slides = document.getElementsByClassName("slide");
			for (let i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1;
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 2000);
		}
	</script>

</body>
</html>
