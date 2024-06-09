<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;

	try {
		String url = "jdbc:mysql://localhost:3306/webServerDB";
		String user="root";
		String password="9999";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, user, password);
		
		if(conn!=null) {
			System.out.println("DB 연결 성공");
			session.setAttribute("dbConnection", conn);
		}
		
		} catch (SQLException ex) {
			out.println("데이터 베이스 연결이 실패했습니다.<br>");
			out.println("SQLExeption: " + ex.getMessage());
		}
%>