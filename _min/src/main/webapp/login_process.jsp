<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DTO.MemberDTO" %>
<%@ page import="DAO.MemberDAO" %>

<%
    MemberDAO dao = MemberDAO.getInstance();
    ArrayList<MemberDTO> listOfMembers = dao.getAllMembers();

    String user_id = request.getParameter("id");
    String user_pw = request.getParameter("passwd");
    
    final String admin_id = "admin";
    final String admin_pw = "1234";


    if (user_id.equals(admin_id) && user_pw.equals(admin_pw)) {
        session.setAttribute("sessionId", user_id);
        session.setAttribute("sessionPw", user_pw);
        response.sendRedirect("reservationAllList.jsp");
    } else {
        boolean validUser = false;
        for(int i=0; i<listOfMembers.size(); i++) {
            MemberDTO member = listOfMembers.get(i);
            if (user_id.equals(member.getId()) && user_pw.equals(member.getPassword())) {
                session.setAttribute("sessionId", user_id);
                session.setAttribute("sessionPw", user_pw);
                validUser = true;
                response.sendRedirect("index.jsp");
                break; 
            }
        }
        if (!validUser) {
            response.sendRedirect("login.jsp?error=1");
        }
    }
%>
