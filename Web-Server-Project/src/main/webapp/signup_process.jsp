<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DTO.MemberDTO" %>
<%@ page import="DAO.MemberDAO" %>
<%@ page import="java.io.IOException" %>

<%
    try {
        MemberDAO dao = MemberDAO.getInstance();
        MemberDTO newMember = new MemberDTO();

        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String email = request.getParameter("email");
        String password = request.getParameter("passwd");
        String name = request.getParameter("name");
        String phone1 = request.getParameter("phone1");
        String phone2 = request.getParameter("phone2");
        String phone3 = request.getParameter("phone3");
        String phone_num = phone1 + phone2 + phone3;

        if (id == null || id.isEmpty() || email == null || email.isEmpty() || password == null || password.isEmpty() || name == null || name.isEmpty() || phone1 == null || phone1.isEmpty() || phone2 == null || phone2.isEmpty() || phone3 == null || phone3.isEmpty()) {
            response.sendRedirect("signup.jsp?error=missing");
            return;
        }

        // ID 중복 체크
        if (dao.getMemberById(id) != null) {
            out.println("<script type='text/javascript'>");
            out.println("alert('이미 존재하는 id입니다.');");
            out.println("window.location.href = 'signup.jsp?error=duplicate';");
            out.println("</script>");
        }

        out.println("email: " + email + "<br>");
        out.println("id: " + id + "<br>");
        out.println("password: " + password + "<br>");
        out.println("name: " + name + "<br>");
        out.println("phone: " + phone_num + "<br>");

        newMember.setEmail(email);
        newMember.setId(id);
        newMember.setName(name);
        newMember.setPassword(password);
        newMember.setPhone_num(phone_num);

        dao.addMember(newMember);

        out.println("<script type='text/javascript'>");
        out.println("alert('회원가입 하신 것을 축하드립니다!');");
        out.println("window.location.href = 'login.jsp';");
        out.println("</script>");
        
    } catch (IOException e) {
        e.printStackTrace();
        response.sendRedirect("signup.jsp?error=ioexception");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("signup.jsp?error=unknown");
    }
%>
