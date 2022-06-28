<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <%@ include file="head.jsp"%>
    <script>
        $(document).ready( function(){
            $('#introduce').on('click', function(){
                $('#mys').slideToggle();
            });
        } )
    </script>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container mt-3">
    <h1 id="myh1" class="text-white" style="background-color: pink">
        Main
    </h1>
    <div class="row mt-3 mb-3">
        <div class="col">
            <button id="introduce" type="button" class="btn text-white" style="background-color: lightpink;">소개</button>
        </div>
    </div>
    <div id="mys">
        <h1>
            안녕하세요.<br />
            이 사이트는 2학년 1반 1번 강보민이 만든 게시판 사이트입니다.<br />
            이 페이지는 Main 페이지입니다. <br/>
            위에 메뉴 중에 원하는 페이지에 가서 기능을 볼 수 있습니다.<br />
            메뉴 중에 Notice-board 페이지는 글 목록을 볼 수 있습니다. <br />
            글 목록에는 순번 제목 작성자 작성일 조회 수를 볼 수 있습니다. <br />
            또한 글도 쓸 수 있습니다.<br />
        </h1>
    </div>
</div>
</body>
</html>