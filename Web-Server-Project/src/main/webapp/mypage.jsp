<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="DTO.MemberDTO"%>
<%@ page import="DAO.MemberDAO"%>
<%@ page import="DTO.ReservationDTO"%>
<%@ page import="DAO.ReservationDAO"%>

<%
	String sessionId = (String) session.getAttribute("sessionId");
	if (sessionId == null) {
		response.sendRedirect("login.jsp");
		return;
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>마이페이지</title>
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
<link rel="stylesheet" href="./assets/css/mypage.css" />

<script type="text/javascript" src="./assets/js/mypage.js"></script>
<script type="text/javascript">
	function confirmDeletion() {
            var confirmation = confirm("정말 탈퇴 하시겠습니까?");
            if (confirmation) {
                window.location.href = "delete_member.jsp?id=" + "<%=sessionId%>";
		}
	}
</script>
</head>


<body>

	<%@ include file="header.jsp"%>

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
						<h1 class="page-title">마이페이지</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="index.jsp">Home</a></li>
						<li>마이페이지</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<br />
	<br />

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h2 class="wow fadeInUp" data-wow-delay=".4s">마이페이지</h2>
				</div>
			</div>
		</div>
	</div>

	<%
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO member = dao.getMemberById(sessionId);

	ReservationDAO reservationDAO = ReservationDAO.getInstance();
	ArrayList<ReservationDTO> reservations = reservationDAO.getReservationsByMember(sessionId);
	%>

	<div class="profile-container">
		<div class="profile-info">
			<h4>회원 정보</h4>
		</div>
		<div>
			<div class="form-group">
				<label for="name">이름</label> <span id="name"><%=member.getName()%></span>
			</div>
			<div class="form-group">
				<label for="id">아이디</label> <span id="name"><%=member.getId()%></span>
			</div>
			<div class="form-group">
				<label for="email">이메일</label> <span id="name"><%=member.getEmail()%></span>
			</div>
			<div class="form-group">
				<label for="phone">연락처</label> <span id="name"><%=member.getFormattedPhoneNum()%></span>
			</div>
			<form onsubmit="return confirmDeletion();" method="post"
				style="margin-top: 20px; max-width: 800px;">
				<button type="submit" class="submit-btn">회원 탈퇴</button>
			</form>
		</div>
	</div>

	<div class="profile-container">
		<h4 class="section-title">예약 현황</h4>
		<div class="section-content">
			<!-- Reservation status content goes here -->
			<table class="status-table">
				<thead>
					<tr>
						<th style="width: 240px;">체크인</th>
						<th style="width: 240px;">체크아웃</th>
						<th style="width: 200px;">객실</th>
						<th style="width: 200px;">상태</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (ReservationDTO reservation : reservations) {
					%>
					<tr class="status-<%=reservation.getStatus()%>"
						onclick="showPopup(this)">
						<td><%=reservation.getCheckIn()%></td>
						<td><%=reservation.getCheckOut()%></td>
						<td><%=reservation.getRoom()%></td>
						<td>
							<%
							String status = reservation.getStatus();
							if (status.equals("pending")) {
								out.print("이용 전");
							} else if (status.equals("completed")) {
								out.print("이용 완료");
							}
							%>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>

	<div id="popup" class="popup">
		<div class="popup-content">
			<span class="close" onclick="closePopup()">&times;</span>
			<h4>예약 상세 정보</h4>
			<br />
			<p id="popup-details"></p>
		</div>
	</div>

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
