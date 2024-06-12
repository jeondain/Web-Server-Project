<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>로그인</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
    href="assets/images/favicon.svg" />
<link rel="stylesheet" href="./assets/css/bootstrap.css" />
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="./assets/css/main.css" />
<link rel="stylesheet" href="./assets/css/login.css" />

<script type="text/javascript" src="./assets/js/login.js"></script>

</head>
<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- /End Preloader -->
	
    <%@ include file="header.jsp" %>

    <br/>
    <br/>
    <br/>
    <br/>

    <div class="row align-items-md-stretch text-center">
        <div class="row justify-content-center align-items-center">
            <div class="h-100 p-5 col-md-6">

                <%
                    String error = request.getParameter("error");
                    if (error != null) {
                        out.println("<div class='alert alert-danger'>");
                        out.println("아이디와 비밀번호를 확인해 주세요.");
                        out.println("</div>");
                    }
                %>

                <form class="form-signin" action="login_process.jsp" method="post">
                <h3>Please sign in</h3>
                    <br/>
                    <br/>
                    <br/>
                
                <div class="form-floating mb-3 row">
                    <input type="text" class="form-control" name="id" required autofocus>
                    <label for="id">ID</label>
                </div>
                <div class="form-floating mb-3 row">
                    <input type="password" class="form-control" name="passwd" required>
                    <label for="passwd">Password</label>
                </div>
                
                <input type="hidden" id="roleInput" name="role" value="member">
                <button type="submit" class="submit-btn">로그인</button>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/count-up.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
