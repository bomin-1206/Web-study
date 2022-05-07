<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- method get post -->
<form action="out.jsp" method="post">
<!-- post는 주소줄에 보여주지 않고 get은 주소줄에 나타남 -->
	아이디<input type="text" name="id" /><br>
	비밀번호<input type="password" name="pw" /><br>
	<input type="submit" value="전송" />
</form>
</body>
</html>