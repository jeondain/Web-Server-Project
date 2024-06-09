<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>회원가입</title>
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
<link rel="stylesheet" href="./assets/css/bootstrap.css" />
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="./assets/css/main.css" />
<link rel="stylesheet" href="./assets/css/login.css" />

<script type="text/javascript" src="./assets/js/signup.js"></script>

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

    			<form class="form-signin" name="Member" action="signup_process.jsp" method="post" onsubmit="checkMember(); return false;">
    			<h3>Please sign up</h3>
    			    <br/>
				    <br/>
				    <br/>
				
				<div class="form-floating mb-3 row">
    				<input type="text" class="form-control" name="email" required>
    				<label for="email">Email</label>
    			</div>
    			<div class="form-floating mb-3 row">
    				<input type="text" class="form-control" name="id" required>
    				<label for="id">ID</label>
    			</div>
    			<div class="form-floating mb-3 row">
    				<input type="text" class="form-control" name="name" required>
    				<label for="name">Name</label>
    			</div>
    			<div class="form-floating mb-3 row">
    				<input type="password" class="form-control" name="passwd" required>
    				<label for="passwd">Password</label>
    			</div>
				<div class="form-floating mb-3 row phone-input-group" style="display: flex; justify-content: center;">
    				<select name="phone1" required>
    					<option value="010">010</option>
    					<option value="011">011</option>
    					<option value="016">016</option>
    					<option value="017">017</option>
    					<option value="019">019</option>
    				</select>
    				<span class="separator">-</span>
    				<input type="text" class="form-control" maxlength="4" name="phone2" required style="padding: 1rem;">
    				<span class="separator">-</span>
    				<input type="text" class="form-control" maxlength="4" name="phone3" required style="padding: 1rem;">
    				<label for="phone" style="width: 80px; top: -10px;">Phone</label>
    			</div>
    			
    			<input type="hidden" id="roleInput" name="role" value="member">
    			<button type="submit" class="submit-btn">가입하기</button>
    			</form>
    		</div>
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
