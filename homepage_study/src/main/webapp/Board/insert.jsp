<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.example.noticeboard_study.Board"%>
<%@ page import="com.example.noticeboard_study.BoardManager"%>
<%@ page import="java.util.List" %>

<%
    BoardManager bm = new BoardManager();
    List<Board> list = bm.doselect();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <form action="insertproc.jsp">
        <h1 class="text-white" style="background-color: pink">
            Registration
        </h1>
        <div class="row">
            <div class="col">
                제목
                <input class="form-control border border-danger mt-2 mb-3" type="text" name="title">
                내용
                <textarea class="form-control border border-danger mt-2 mb-3" rows="20" name="content"></textarea>
                작성자
                <input class="form-control border border-danger mt-2 mb-3" type="text" name="name">
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col">
                <input class="btn text-white" style="background-color: lightpink;" type="submit" value="저장">
            </div>
        </div>
    </form>
</div>
</body>
</html>