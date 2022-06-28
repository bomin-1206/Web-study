<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-md" style="background-color: pink">
    <div class="container-fluid me-auto mb-2 mb-lg-0">
        <a class="navbar-brand text-white" href="/Login/index.jsp" style="font-size: 25px">Main</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="/Login/login.jsp" style="font-size: 20px">로그인</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-white" href="/Login/insert.jsp" style="font-size: 20px">회원가입</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-white" href="/Login/select.jsp" style="font-size: 20px">회원정보관리</a>
                </li>
            </ul>
        </div>
    </div>
</nav>