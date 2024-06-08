<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="mvc.model.BoardDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String sessionId = (String) session.getAttribute("sessionId");
    List<BoardDTO> boardList = (List<BoardDTO>) request.getAttribute("boardlist");    
    Integer total_record = (Integer) request.getAttribute("total_record");
    Integer pageNum = (Integer) request.getAttribute("pageNum");
    Integer total_page = (Integer) request.getAttribute("total_page");

    if (total_record == null) total_record = 0;
    if (pageNum == null) pageNum = 1;
    if (total_page == null) total_page = 1;
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
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="./assets/css/animate.css" />
<link rel="stylesheet" href="./assets/css/tiny-slider.css" />
<link rel="stylesheet" href="./assets/css/glightbox.min.css" />
<link rel="stylesheet" href="./assets/css/main.css" />
<link rel="stylesheet" href="./assets/css/inquiryBoard.css" />
</head>
<script type="text/javascript">
    function checkForm() {
        var sessionId = "<%= sessionId %>";
        if (sessionId == "null" || sessionId == "") {
            alert("로그인 해주세요.");
            return false;
        } else {
            window.location.href = "./BoardWriteForm.do?id=" + sessionId;
        }
    }
</script>

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
                    <li><a href="inquiryBoard.jsp">문의</a></li>
                    <li>문의 게시판</li>
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
                    문의 게시판
                </h2>
            </div>
            <a href="#" onclick="checkForm(); return false;" class="submit-btn-top-right">1:1 문의하기</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row align-items-md-stretch text-center">     
        <form action="<c:url value='./BoardListAction.do'/>" method="post">           
            <div class="text-end"> 
                <span class="badge text-bg-success">전체 <%=total_record%>건 </span>
            </div>      
            <div style="padding-top: 20px">
                <table class="table table-hover text-center">
                    <tr>
                        <th>번호</th><th>제목</th><th>작성일</th><th>글쓴이</th><th>조회</th>
                    </tr>
                    <% if (boardList != null && !boardList.isEmpty()) { %>
                        <% for (BoardDTO notice : boardList) { %>
                        <tr>
                            <td style="width: 60px"><%=notice.getNum()%></td>
                            <td style="width: 180px"><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
                            <td style="width: 60px"><%=notice.getRegist_day()%></td>
                            <td style="width: 60px"><%=notice.getName()%></td>
                            <td style="width: 60px"><%=notice.getHit()%></td>
                        </tr>
                        <% } %>
                    <% } else { %>
                        <tr>
                            <td colspan="5">게시물이 없습니다.</td>
                        </tr>
                    <% } %>
                </table>
            </div>

            <div align="center">
                <c:set var="pageNum" value="<%=pageNum%>" />
                <c:forEach var="i" begin="1" end="<%=total_page%>">
                    <a href="<c:url value='./BoardListAction.do?pageNum=${i}' /> ">
                        <c:choose>
                            <c:when test="${pageNum==i}">
                                <font color='4C5317'><b> [${i}]</b></font>
                            </c:when>
                            <c:otherwise>
                                <font color='4C5317'> [${i}]</font>
                            </c:otherwise>
                        </c:choose>
                    </a>
                </c:forEach>
            </div>              
            <div align="left" style="margin: 20px 0;">                
                <select name="items" class="txt">
                    <option value="subject">제목에서</option>
                    <option value="content">본문에서</option>
                    <option value="name">글쓴이에서</option>
                </select> <input name="text" type="text" /> <input type="submit" id="btnAdd" value="검색 " />                
            </div>
        </form>         
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
