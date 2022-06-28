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
        <h1 class="text-white" style="background-color: pink">
            회원가입
        </h1>
        <form action="/Login/insertproc.jsp">
            username<br>
            <input type="text" name="username"/><br>
            password<br>
            <input type="text" name="password"/><br>
            <br/>성별<br/>
            남  <input type="radio" name="gender" value="남" checked/>
            여 <input type="radio" name="gender" value="여"/> <br />
            <input type="submit" class="btn text-white mt-1" style="background-color: lightpink;" value="저장"/>
        </form>
    </div>
</div>
</body>
</html>