<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <div class="name">
        <h1 class="text-white ml-3" style="background-color: pink">
            로그인
        </h1>
        <%
            String username = (String) session.getAttribute("username");
            if (username == null){
        %>
        <form action="/Login/loginproc.jsp">
            username<br>
            <input type="text" name="username"/><br>
            password<br>
            <input type="text" name="password"/><br>
            <input type="submit" class="btn text-white mt-3" style="background-color: lightpink;" value="로그인"/>
        </form>
        <%
        }else{
            out.println(username+"님 로그인했음");
        %>
        <a href="/Board/logout.jsp">로그아웃</a>
        <%
            }
        %>
    </div>
</div>
</body>
</html>