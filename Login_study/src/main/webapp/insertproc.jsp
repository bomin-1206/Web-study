<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.webstduy.MemberDBManager" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    MemberDBManager md = new MemberDBManager();
    md.doinsert(username,password,gender);
    response.sendRedirect("select.jsp");
%>