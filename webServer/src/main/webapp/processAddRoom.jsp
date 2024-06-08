<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.sql.*" %>
<%@ include file ="dbconn.jsp"%>


<%
    request.setCharacterEncoding("UTF-8");

    String realFolder = "/Users/hyunmin/Desktop/workspace_webServer/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/webweb/resource/image";
    int maxSize = 20 * 1024 * 1024;
    String encType = "utf-8";

    MultipartRequest multi = new MultipartRequest(request, realFolder,
            maxSize, encType, new DefaultFileRenamePolicy());

    String name = multi.getParameter("name");
    String roomId = multi.getParameter("roomId");
    String description = multi.getParameter("description");
    String briefDescription = multi.getParameter("briefDescription");
    String[] bedTypes = multi.getParameterValues("bedType");
    String guestsCount = multi.getParameter("guestsCount");
    String[] views = multi.getParameterValues("view");
    String roomArea = multi.getParameter("roomArea");
    String amenityList = multi.getParameter("amenityList");
    String checkInTime = multi.getParameter("checkInTime");
    String checkOutTime = multi.getParameter("checkOutTime");
    String roomPrice = multi.getParameter("roomPrice");

    // Handling file uploads
    Enumeration files = multi.getFileNames();
    String imagePATH = "";
    String imagePATH2 = "";
    String imagePATH3 = "";

    while (files.hasMoreElements()) {
        String fname = (String) files.nextElement();
        String filename = multi.getFilesystemName(fname);
        if (imagePATH.isEmpty()) {
            imagePATH = filename;
        } else if (imagePATH2.isEmpty()) {
            imagePATH2 = filename;
        } else if (imagePATH3.isEmpty()) {
            imagePATH3 = filename;
        }
    }

    Integer guests;
    Integer price;

    if (guestsCount == null || guestsCount.isEmpty()) {
        guests = 2; 
    } else {
        guests = Integer.valueOf(guestsCount);
    }

    if (roomPrice == null || roomPrice.isEmpty()) {
        price = 0;
    } else {
        price = Integer.valueOf(roomPrice);
    }

    PreparedStatement pstmt = null;
    try {
        String sql = "INSERT INTO Room VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, roomId);
        pstmt.setString(2, name);
        pstmt.setString(3, imagePATH);
        pstmt.setString(4, imagePATH2);
        pstmt.setString(5, imagePATH3);
        pstmt.setString(6, briefDescription);
        pstmt.setString(7, description);
        pstmt.setString(8, bedTypes != null ? String.join(" / ", bedTypes) : "");
        pstmt.setString(9, views != null ? String.join(" / ", views) : "");
        pstmt.setString(10, roomArea);
        pstmt.setInt(11, guests);
        pstmt.setString(12, amenityList);
        pstmt.setString(13, checkOutTime);
        pstmt.setString(14, checkInTime);
        pstmt.setInt(15, price);

        pstmt.executeUpdate();
        conn.commit();

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
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

    response.sendRedirect("room.jsp");
%>
