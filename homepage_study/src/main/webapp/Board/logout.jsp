<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    // 세션에 있는 데이터 삭제
    session.invalidate();
    response.sendRedirect("/Login/login.jsp");

%>