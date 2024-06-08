<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DTO.MemberDTO"%>
<%@ page import="DAO.MemberDAO"%>
<%@ page import="java.io.IOException" %>

<%
    try {
        String id = request.getParameter("id");
        if (id == null || id.isEmpty()) {
            response.sendRedirect("mypage.jsp?error=missing");
            return;
        }

        MemberDAO dao = MemberDAO.getInstance();

        if (dao.getMemberById(id) == null) {
            response.sendRedirect("mypage.jsp?error=notfound");
        } else {
  
            dao.deleteMemberById(id);
        	session.invalidate(); 
        	response.sendRedirect("login.jsp"); 
        	
            out.println("<script type='text/javascript'>");
            out.println("alert('회원 탈퇴가 성공적으로 처리되었습니다.');");
            out.println("window.location.href = 'login.jsp';");
            out.println("</script>");
        }
    } catch (IOException e) {
        e.printStackTrace();
        response.sendRedirect("mypage.jsp?error=ioexception");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("mypage.jsp?error=unknown");
    }
%>

<%--  
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/WebMarketDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   DELETE FROM member WHERE id = ?
   <sql:param value="<%=sessionId%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:import var="url" url="logoutMember.jsp" />
	<c:redirect url="resultMember.jsp" />
</c:if> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>

<%
    String id = request.getParameter("id");
    if (id != null && !id.isEmpty()) {
        PreparedStatement pstmt = null;
        try {
            String sql = "DELETE FROM Reservation WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            int rows = pstmt.executeUpdate();
            if (rows > 0) {
                out.println("<script>alert('삭제되었습니다.'); window.location='reservationAllList.jsp';</script>");
            } else {
                out.println("<script>alert('삭제 실패. 다시 시도해주세요.'); window.location='reservationAllList.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('오류가 발생했습니다. 다시 시도해주세요.'); window.location='reservationAllList.jsp';</script>");
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    } else {
        out.println("<script>alert('유효하지 않은 요청입니다.'); window.location='reservationAllList.jsp';</script>");
    }
%> --%>