<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
    <link href="./login.css" rel="stylesheet">
    <link href="./style.css" rel="stylesheet">
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="fhrmdls">
    <div class="name">
        <h1>로그인</h1>
        <%
            String username = (String) session.getAttribute("username");
            if (username == null){
        %>
        <form action="loginproc.jsp">
            username<br>
            <input type="text" name="username"/><br>
            password<br>
            <input type="text" name="password"/><br>
            <input type="submit" value="로그인"/>
        </form>
        <%
        }else{
            out.println(username+"님 로그인했음");
        %>
        <a href="logout.jsp">로그아웃</a>
        <%
            }
        %>
    </div>
</div>
</body>
</html>