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
