<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>문의 게시판</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->

<!-- Web Font -->
<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="./assets/css/animate.css" />
<link rel="stylesheet" href="./assets/css/tiny-slider.css" />
<link rel="stylesheet" href="./assets/css/glightbox.min.css" />
<link rel="stylesheet" href="./assets/css/main.css" />
<link rel="stylesheet" href="./assets/css/inquiryDetail.css" />
<link rel="stylesheet" href="./assets/css/inquiry.css" />

</head>
<body>
<%@ include file="header.jsp" %>

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
                    <h1 class="page-title">문의 게시판</h1>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-nav">
                    <li><a href="./BoardListAction.do?pageNum=<%=nowpage%>">문의 목록</a></li>
                    <li>상세페이지</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<br/>
<br/>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="section-title">
                <h2 class="wow fadeInUp" data-wow-delay=".4s">
                    문의 상세페이지
                </h2>
            </div>
        </div>
    </div>
</div>

    <div class="container">
    
    	<div class="contact-container">
    	
	    <form  name="newUpdate" action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"  method="post">
	        <div class="form-group">
	            <label for="name">이름</label>
	            <input type="text" id="name" name="name" value="<%=notice.getName()%>">
	        </div>
	        <div class="form-group">
	            <label for="subject">문의 제목</label>
	            <input type="text" id="subject" name="subject" value="<%=notice.getSubject()%>">
	        </div>
	        <div class="form-group" >
	            <label for="message">문의 내용</label>
	            <textarea id="content" name="content" rows="6" required><%=notice.getContent() %></textarea>
	        </div>
	        
				<c:set var="userId" value="<%=notice.getId()%>" />
				<c:if test="${sessionId==userId}">
					<p>
						<a	href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>" class="submit-btn"> 삭제</a> 
						<button type="submit" class="submit-btn">수정</button>
				</c:if>	    
					
		</form>
	</div> 

    <div class="contact-container<% if (notice.getResponse() == null) { out.print(" pending-response"); } %>">
        <h5>답변</h5>
        <br/>
        <%
            String res = notice.getResponse();
            if (res != null) {
        %>
            <p class="response-content"><%=notice.getResponse() %></p>
        <% } else { %>
            <p class="response-content">답변 대기 중입니다.</p>
        <% } %>
    </div>
    
    <c:if test="${sessionId == 'admin'}">
		<p>
 		<div class="admin-response">
          <h5>답변 작성</h5>
	            <form action="AddResponseAction.do" method="post">
			    <input type="hidden" name="num" value="<%=notice.getNum()%>">
			    <input type="hidden" name="pageNum" value="<%=nowpage%>">  			
			    <div class="form-group">
                    <textarea name="response" class="form-control" rows="2" required></textarea>
                </div>
                <button type="submit" class="submit-btn">제출</button>
            </form>
         </div>
	</c:if>	   

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
