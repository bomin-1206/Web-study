<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
    <link href="./insert.css" rel="stylesheet">
    <link href="./style.css" rel="stylesheet">
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="register">
    <div class="name">
        <h1>회원가입</h1>
        <form action="insertproc.jsp">
            username<br>
            <input type="text" name="username"/><br>
            password<br>
            <input type="text" name="password"/><br>
            <br/>성별<br/>
            남  <input type="radio" name="gender" value="남" checked/>
            여 <input type="radio" name="gender" value="여"/>
            <input type="submit" value="저장"/>
        </form>
    </div>
</div>
</body>
</html>