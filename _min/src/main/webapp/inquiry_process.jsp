<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.inquiryDAO" %>
<%@ page import="DTO.inquiryDTO" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.io.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String content = request.getParameter("message");

    inquiryDTO newInquiry = new inquiryDTO();
    newInquiry.setWriter(name);
    newInquiry.setWriterEmail(email);
    newInquiry.setSubject(subject);
    newInquiry.setContent(content);
    newInquiry.setCreationDate(new Date(System.currentTimeMillis()));

    inquiryDAO dao = inquiryDAO.getInstance();
    dao.addInquiry(newInquiry);

    out.println("<script>alert('문의가 성공적으로 제출되었습니다.');</script>");
    response.sendRedirect("inquiryBoard.jsp"); 
%>
