<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
%>
