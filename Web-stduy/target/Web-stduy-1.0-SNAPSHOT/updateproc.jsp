<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.webstduy.MemberDBManager" %>
<%
    String id = request.getParameter("id");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    MemberDBManager md = new MemberDBManager();
    md.doupdate(username,password,gender,id);
    response.sendRedirect("select.jsp");
%>