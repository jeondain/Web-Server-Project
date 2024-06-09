<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String userID = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function confirmLogout() {
		var confirmation = confirm("정말 로그아웃 하시겠습니까?");
		if (confirmation) {
			window.location.href = "logout.jsp";
		}
	}
</script>
</head>
<body>
	<!-- Start Header Area -->
	<header class="header navbar-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="nav-inner">
						<nav class="navbar navbar-expand-lg">
							<a class="navbar-brand" href="index.jsp">
								<h4>SKU HOTEL</h4>
							</a>
							<button class="navbar-toggler mobile-menu-btn" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="toggler-icon"></span> <span class="toggler-icon"></span>
								<span class="toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse sub-menu-bar"
								id="navbarSupportedContent">
								<ul id="nav" class="navbar-nav ms-auto">
									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-1"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">소개</a>
										<ul class="sub-menu collapse" id="submenu-1-5">
											<li class="nav-item"><a href="about_us.jsp">호텔 소개</a></li>
											<li class="nav-item"><a href="gallery.jsp">SKU 갤러리</a></li>
										</ul></li>

									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-2"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">객실</a>
										<ul class="sub-menu collapse" id="submenu-1-5">
											<li class="nav-item"><a href="room.jsp">전체 객실소개</a></li>
											<%
											if (userID != null && userID.equals("admin")) {
											%>
											<li class="nav-item"><a href="addRoom.jsp">객실 추가</a></li>
											<%
											}
											%>
										</ul></li>


									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-3"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">예약하기</a>
										<ul class="sub-menu collapse" id="submenu-1-5">
											<li class="nav-item"><a href="reservation.jsp">예약하기</a></li>
											<li class="nav-item"><a href="reservation_check.jsp">예약
													조회하기</a></li>
										</ul></li>

									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-5"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">부대시설</a>
										<ul class="sub-menu collapse" id="submenu-1-5">
											<li class="nav-item"><a href="facility.jsp">부대시설 소개</a></li>
										</ul></li>


									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-5"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">문의</a>
										<ul class="sub-menu collapse" id="submenu-1-5">
											<li class="nav-item"><a href="FAQ.jsp">자주 묻는 질문</a></li>
											<li class="nav-item"><a
												href="<c:url value="/BoardListAction.do?pageNum=1"/>">1:1
													문의하기</a></li>
										</ul></li>
								</ul>
							</div>
							<!-- navbar collapse -->
							<div class="login-button">
								<ul>
									<li><a href="signup.jsp"><i class="lni lni-enter"></i>
											회원가입</a></li>

									<%
									if (userID != null && userID.equals("admin")) {
									%>
									<li><a href="reservationAllList.jsp"><i class="lni lni-user"></i>관리자
											페이지</a></li>

									<%
									} else if (userID != null) {
									%>
									<li><a href="mypage.jsp"><i class="lni lni-user"></i>마이페이지</a></li>
									<%
									} else {

									}
									%>
								</ul>
							</div>
							<div class="button header-button">
								<%
								if (userID != null) {
								%>
								<a href="javascript:void(0);" class="btn"
									onclick="confirmLogout()">로그아웃</a>
								<%
								} else {
								%>
								<a href="login.jsp" class="btn">로그인하기</a>
								<%
								}
								%>
							</div>
						</nav>
						<!-- navbar -->
					</div>
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</header>
	<!-- End Header Area -->
</body>
</html>
