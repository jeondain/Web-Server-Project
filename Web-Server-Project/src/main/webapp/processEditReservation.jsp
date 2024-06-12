<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>

<%
    // 폼에서 전송된 파라미터를 받아옵니다.
    String reservationId = request.getParameter("id");
    String memberId = request.getParameter("memberId");
    String checkInOut = request.getParameter("inout");
    int guests = Integer.parseInt(request.getParameter("guests"));
    String roomType = request.getParameter("roomType");
    String wakeUpCall = request.getParameter("wakeUpCall");
    String spa = request.getParameter("spa");
    String extraBed = request.getParameter("extraBed");
    String addGuests = request.getParameter("addGuests");
    String requests = request.getParameter("requests");
    int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));

    PreparedStatement pstmt = null;
    String sql = "UPDATE Reservation SET memberId = ?, checkInOut = ?, guests = ?, roomType = ?, wakeUpCall = ?, spa = ?, extraBed = ?, addGuests = ?, requests = ?, totalPrice = ? WHERE id = ?";

    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, memberId);
        pstmt.setString(2, checkInOut);
        pstmt.setInt(3, guests);
        pstmt.setString(4, roomType);
        pstmt.setString(5, wakeUpCall);
        pstmt.setString(6, spa);
        pstmt.setString(7, extraBed);
        pstmt.setString(8, addGuests);
        pstmt.setString(9, requests);
        pstmt.setInt(10, totalPrice);
        pstmt.setString(11, reservationId);

        int rowsUpdated = pstmt.executeUpdate();
        
        if (rowsUpdated > 0) {
            out.println("<script>alert('예약이 성공적으로 수정되었습니다.'); location.href='reservationAllList.jsp';</script>");
        } else {
            out.println("<script>alert('예약 수정에 실패했습니다. 다시 시도해주세요.'); history.back();</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('데이터베이스 오류가 발생했습니다.'); history.back();</script>");
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
