<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
    String id = request.getParameter("id");
    String memberId = request.getParameter("memberId");
    String checkInOut = request.getParameter("checkInOut");
    String guests = request.getParameter("guests");
    String roomType = request.getParameter("roomType");
    String wakeUpCall = request.getParameter("wakeUpCall");
    String spa = request.getParameter("spa");
    String extraBed = request.getParameter("extraBed");
    String addGuests = request.getParameter("addGuests");
    String requests = request.getParameter("requests");
    String totalPrice = request.getParameter("totalPrice");

    PreparedStatement pstmt = null;
    String sql = "UPDATE Reservation SET memberId = ?, checkInOut = ?, guests = ?, roomType = ?, wakeUpCall = ?, spa = ?, extraBed = ?, addGuests = ?, requests = ?, totalPrice = ? WHERE id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, memberId);
    pstmt.setString(2, checkInOut);
    pstmt.setInt(3, Integer.parseInt(guests));
    pstmt.setString(4, roomType);
    pstmt.setString(5, wakeUpCall);
    pstmt.setString(6, spa);
    pstmt.setString(7, extraBed);
    pstmt.setInt(8, Integer.parseInt(addGuests));
    pstmt.setString(9, requests);
    pstmt.setString(10, totalPrice);
    pstmt.setString(11, id);

    int result = pstmt.executeUpdate();

    if (result > 0) {
        out.println("<script>alert('수정되었습니다.'); location.href='reservationAllList.jsp';</script>");
    } else {
        out.println("<script>alert('수정 실패하였습니다.'); history.back();</script>");
    }

    if (pstmt != null) pstmt.close();
    if (conn != null) conn.close();
%>
