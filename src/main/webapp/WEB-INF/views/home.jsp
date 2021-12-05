<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ page session="false" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Street Food Map</title>
    <link rel="icon" type="image/x-icon" href="resources/assets/hot.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="resources/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
<c:if test="${member != null}">
    <% String loginId = "${member != null}";%>
</c:if>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav" style="background-color: #ec944c">
    <div class="container px-4">
        <a class="navbar-brand" href="/#page-top" style="color: #f2cd84">Street Food Map</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <c:if test="${member != null}">
                    <li class="nav-item"><a class="nav-link">${member.u_name} 님</a></li>
                </c:if>
                <li class="nav-item"><a class="nav-link" href="#about">지도</a></li>
                <li class="nav-item"><a class="nav-link" href="#services">게시판</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">정보</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="bg-primary bg-image text-white">
    <div class="container px-4 text-center">
        <h1 class="fw-bolder">Street Food Map</h1>
        <p class="lead">길거리 음식 지도 사이트</p>
        <c:if test="${member != null}">
        <a class="btn btn-lg btn-light" href="/logout" ata-toggle="modal" data-target="#logoutSuccess">로그아웃</a>
        </c:if >
        <c:if test="${member == null}">
        <a class="btn btn-lg btn-light" href="/loginPage">로그인/회원가입</a>
        </c:if >
    </div>
</header>
<!-- Map section-->
<section id="about">
    <div class="container px-4">
        <div class="row gx-4 justify-content-center">
            <div class="col-lg-8">
                <div><h2>병원 지도</h2></div>
                <div class="map_ma" id="map_ma"></div>
            </div>
        </div>
    </div>
</section>
<!-- Board section-->
<section class="bg-light" id="services">
    <div class="container px-4">
        <div class="row gx-4 justify-content-center">
            <div class="col-lg-8">
                <h2 data-toggle="modal" data-id="1" data-target="#orderModal">길거리 전단지</h2>
                <p class="lead">자유 게시판</p>
                <jsp:include page="board/boardList.jsp"/>


            </div>
        </div>
    </div>
</section>
<!--Modal include-->
<jsp:include page="board/boardModal.jsp"/>

<!-- Contact section-->
<section id="contact">
    <div class="container px-4">
        <div class="row gx-4 justify-content-center">
            <div class="col-lg-8">
                <h2>정보</h2>
                <p class="lead">코로나 현황</p>



                <p class="lead">응급 처치 요령</p>
                <ul>
                    <li>
                        <a href="https://www.safekorea.go.kr/idsiSFK/neo/sfk/cs/contents/prevent/SDIJK14433.html?cd1=33&cd2=99&pagecd=SDIJK144.33&menuSeq=128" class="btn btn-outline-secondary" role ="button" aria-disabled="true">국민재난 안전 포털</a>
                    </li>
                    <br>
                    <li>
                        <a href="https://www.e-gen.or.kr/egen/emergency_treat.do" class="btn btn-outline-secondary" role ="button" aria-disabled="true">응급 의료 포털</a>
                    </li>
                </ul>

                <p class="lead"></p>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; khj 2021</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=" ></script>
<script src="resources/js/scripts.js"></script>
<script src="resources/js/mapScripts.js"></script>

</body>
</html>