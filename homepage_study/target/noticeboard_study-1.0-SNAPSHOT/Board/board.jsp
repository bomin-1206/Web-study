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
    <title>BOARD</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container  mt-3">
    <h1 class="text-white" style="background-color: pink">
        Notice-board
    </h1>
    <div class="row">
        <div class="col">
            <table class="table table-hover">
                <thead>
                <tr class="table-warning">
                    <th scope="col">순번</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
                </thead>
                <tbody>
                <% for(int i=0; i<list.size(); i++) {
                    Board board = list.get(i);
                %>
                <tr onclick="location.href='view.jsp?idx=<%=board.getIdx()%>'">
                    <th scope="row"><%=board.getIdx()%></th>
                    <td><%=board.getTitle()%></td>
                    <td><%=board.getName()%></td>
                    <td><%=board.getWdate()%></td>
                    <td><%=board.getCount()%></td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <a class="btn text-white" href="insert.jsp" style="background-color: lightpink;">글쓰기</a>
        </div>
    </div>
</div>
</body>
</html>