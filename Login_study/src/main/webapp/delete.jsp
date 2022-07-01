<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.webstduy.MemberDBManager" %>
<%
  // request response
  String ids[] = request.getParameterValues("id");
//  out.println(ids[0]);
//  out.println(ids[1]);
//  out.println(ids[2]);
  MemberDBManager md = new MemberDBManager();
  md.dodelete(ids);
  response.sendRedirect("select.jsp");
  // insert update 만들어야함...
%>