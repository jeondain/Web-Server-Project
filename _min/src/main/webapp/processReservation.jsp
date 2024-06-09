<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
    String memberId = request.getParameter("memberId");
    String checkInOut = request.getParameter("inout");
    String guests = request.getParameter("guests");
    String roomType = request.getParameter("roomType");
    String wakeUpCall = request.getParameter("wakeUpCall");
    String spa = request.getParameter("spa");
    String extraBed = request.getParameter("extraBed");
    String addGuests = request.getParameter("addGuests");
    String requests = request.getParameter("requests");
    String totalPrice = request.getParameter("totalPrice");

    Integer total;
    if (totalPrice == null || totalPrice.isEmpty()) {
        total = 0;
    } else {
        total = Integer.valueOf(totalPrice);
    }

    PreparedStatement pstmt = null;
    ResultSet generatedKeys = null;

    try {
        String sql = "INSERT INTO Reservation (memberId, checkInOut, guests, roomType, wakeUpCall, spa, extraBed, addGuests, requests, totalPrice) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        pstmt.setString(1, memberId);
        pstmt.setString(2, checkInOut);
        pstmt.setString(3, guests);
        pstmt.setString(4, roomType);
        pstmt.setString(5, wakeUpCall);
        pstmt.setString(6, spa);
        pstmt.setString(7, extraBed);
        pstmt.setString(8, addGuests);
        pstmt.setString(9, requests);
        pstmt.setInt(10, total);

        pstmt.executeUpdate();

        generatedKeys = pstmt.getGeneratedKeys();
        if (generatedKeys.next()) {
            int reservationId = generatedKeys.getInt(1);
            session.setAttribute("reservationId", reservationId);
         
            System.out.println("예약 ID: " + reservationId);
        
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (generatedKeys != null) {
            try {
                generatedKeys.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    response.sendRedirect("reservation_completed.jsp");
%>
