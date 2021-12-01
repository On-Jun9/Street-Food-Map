<%--
  Created by IntelliJ IDEA.
  User: HJ
  Date: 2021-12-01
  Time: 오후 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="resources/css/loginStyle.css" rel="stylesheet" />
</head>
<body>

<h2>로그인 / 회원가입</h2>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="#">
            <h1>회원 가입</h1>
<%--            <div class="social-container">--%>
<%--                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>--%>
<%--                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>--%>
<%--                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>--%>
<%--            </div>--%>
            <span>이메일을 통해 회원가입</span>
            <input type="text" placeholder="Name" />
            <input type="email" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <button>회원가입</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="#">
            <h1>로그인</h1>
            <span>이메일을 통해 로그인</span>
            <input type="email" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <button>로그인</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>이메일을 통해 로그인</p>
                <button class="ghost" id="signIn">로그인 하기</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>이메일을 통해 회원가입</p>
                <button class="ghost" id="signUp">회원가입 하기</button>
            </div>
        </div>
    </div>
</div>

<footer>
    <p>
<%--        Created with <i class="fa fa-heart"></i> by--%>
<%--        <a target="_blank" href="https://florin-pop.com">Florin Pop</a>--%>
<%--        - 취소--%>
        <a href="/">로그인 취소</a>
    </p>
</footer>
<script src="resources/js/loginScripts.js"></script>
</body>
</html>
