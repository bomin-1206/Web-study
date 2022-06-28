<%@ page import="com.example.noticeboard_study.BoardManager" %>
<%@ page import="com.example.noticeboard_study.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String idx = request.getParameter("idx");
    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(idx));
%>

<!DOCTYPE html>
<html>
<head>
    <title>Writing</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="text-white" style="background-color: pink">
        Writing
    </h1>
    <div class="row">
        <div class="col">
            제목
            <div class="form-control border border-danger p-3 mt-2 mb-3"><%=board.getTitle()%></div>
            내용
            <div class="form-control border border-danger p-3 mt-2 mb-3" style="height: 20rem;"><%=board.getContent()%></div>
            작성자
            <div class="form-control border border-danger p-3 mt-2 mb-3"><%=board.getName()%></div>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col">
            <a class="btn text-white" href="update.jsp?idx=<%=board.getIdx()%>" style="background-color: lightpink;">글수정</a>
            <a class="btn text-white" href="delete.jsp?idx=<%=board.getIdx()%>" style="background-color: lightpink;">글삭제</a>
        </div>
    </div>
</div>
</body>
</html>