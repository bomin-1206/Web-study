<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.example.noticeboard_study.Board"%>
<%@ page import="com.example.noticeboard_study.BoardManager"%>
<%
    String idx = request.getParameter("idx");
    String title = request.getParameter("title");
    String name = request.getParameter("name");
    String content = request.getParameter("content");
    Board board = new Board();
    board.setIdx(Integer.parseInt(idx));
    board.setTitle(title);
    board.setContent(content);
    board.setName(name);
    BoardManager bm = new BoardManager();
    boolean success = bm.doupdate(board);
    if(success) {
        out.println("<script>");
        out.println("alert('글저장하였습니다.');");
        out.println("window.location.href='board.jsp';");
        out.println("</script>");
    }
%>