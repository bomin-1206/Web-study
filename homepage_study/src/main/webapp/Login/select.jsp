<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.noticeboard_study.MemberDBManager" %>
<%@ page import="com.example.noticeboard_study.Member" %>

<%
    MemberDBManager md = new MemberDBManager();
    List<Member> list = md.doselect();
//    out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="/Login/head.jsp" %>
</head>
<body>
<%@ include file="/Login/nav.jsp" %>
<div class="container mt-3 ml-3">
    <h1 class="text-white" style="background-color: pink">
        회원정보관리
    </h1>
    <form action="/Login/delete.jsp">
        <table class="table table-hover">
            <thead>
            <tr class="table-warning">
                <th scope="col">체크</th>
                <th scope="col">순번</th>
                <th scope="col">이름</th>
                <th scope="col">비번</th>
                <th scope="col">성별</th>
            </tr>
            </thead>
            <%
                for(int i =0; i< list.size(); i++){
                    Member member = list.get(i);
            %>
            <tr onclick="location.href='/Login/update.jsp?id=<%=member.getId()%>'">
                <td> <input type="checkbox" name="id" value="<%=member.getId()%>" style="margin-left: 10px;"/> </td>
                <td> <%=member.getId()%> </td>
                <td><%=member.getUsername()%></td>
                <td> <%=member.getPassword()%> </td>
                <td> <%=member.getGender()%> </td>
            </tr>
            <%
                }
            %>
        </table>
        <input type="submit" class="btn text-white mt-1" style="background-color: lightpink;" value="삭제"/>
    </form>
</div>
</body>
</html>