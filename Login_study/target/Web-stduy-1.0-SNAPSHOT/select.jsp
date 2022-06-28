<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.webstduy.MemberDBManager" %>
<%@ page import="com.example.webstduy.Member" %>

<%
    MemberDBManager md = new MemberDBManager();
    List<Member> list = md.doselect();
//    out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<h1>회원정보관리</h1>
<form action="delete.jsp">
    <table style="width:100%; border: 1px solid black;">
        <tr>
            <th></th><th>순번</th><th>이름</th><th>비번</th><th>성별</th>
        </tr>
        <%
            for(int i =0; i< list.size(); i++){
                Member member = list.get(i);
        %>
        <tr>
            <td> <input type="checkbox" name="id" value="<%=member.getId()%>" /> </td>
            <td> <%=member.getId()%> </td>
            <td><b href="update.jsp?id=<%=member.getId()%>"><%=member.getUsername()%></b></td>
            <td> <%=member.getPassword()%> </td>
            <td> <%=member.getGender()%> </td>
        </tr>
        <%
            }
        %>
    </table>
    <input type="submit" value="삭제" />
</form>
</body>
</html>