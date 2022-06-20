<%@ page import="com.example.noticeboard_study.BoardManager" %>
<%@ page import="com.example.noticeboard_study.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String idx = request.getParameter("idx");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String name = request.getParameter("name");

    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(idx));
%>

<!DOCTYPE html>
<html>
<head>
    <title>Correction</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <form action="updateproc.jsp">
        <h1 class="text-white" style="background-color: pink">
            Correction
        </h1>
        <div class="row">
            <div class="col">
                <input type="hidden" name="idx" value="<%=idx%>" />
                제목
                <input type="text" name="title" class="form-control border border-danger p-3 mt-2 mb-3" value="<%=board.getTitle()%>" />
                내용
                <textarea name="content" class="form-control border border-danger p-3 mt-2 mb-3" style="height: 20rem;"><%=board.getContent()%></textarea>
                작성자
                <input type="text" name="name" class="form-control border border-danger p-3 mt-2 mb-3" value="<%=board.getName()%>" />
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col">
                <input type="submit" class="btn text-white" href="board.jsp" style="background-color: lightpink;" value="저장"/>
            </div>
        </div>
    </form>
</div>
</body>
</html>
