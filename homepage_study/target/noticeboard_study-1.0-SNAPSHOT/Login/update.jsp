<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.noticeboard_study.MemberDBManager" %>
<%@ page import="com.example.noticeboard_study.Member" %>
<%
    String id = request.getParameter("id");	// 주소줄에 있는 24,25
    MemberDBManager mdm = new MemberDBManager();
    Member member = mdm.doselectone(id);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%@ include file="/Login/head.jsp" %>
</head>
<body>
<%@ include file="/Login/nav.jsp" %>
<div class="container mt-3 ml-3">
    <h1 class="text-white" style="background-color: pink">
        회원정보수정
    </h1>
    <form action="/Login/updateproc.jsp">

        <input type="hidden" name="id" value="<%=id%>" />

        username<br>
        <input type="text" name="username" value="<%=member.getUsername()%>" /><br>
        password<br>
        <input type="text" name="password" value="<%=member.getPassword()%>" /><br>
        <input type="hidden" name="gender" value="<%=member.getGender()%>" />
        <input type="submit" class="btn text-white mt-1" style="background-color: lightpink;" value="수정"/>
    </form>
</div>
</body>
</html>