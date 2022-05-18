<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.webstduy.MemberDB" %>
<%
  String ids[] = request.getParameterValues("id");
  MemberDB md = new MemberDB();
  md.dodelete(ids);

  response.sendRedirect("select.jsp");
%>