<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav" style="background-color: #ec944c">
    <div class="container px-4">
        <a class="navbar-brand" href="#page-top" style="color: #f2cd84">Street Food Map</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#about">지도</a></li>
                <li class="nav-item"><a class="nav-link" href="#services">게시판</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="bg-primary bg-image text-white">
    <div class="container px-4 text-center">
        <h1 class="fw-bolder">Street Food Map</h1>
        <p class="lead">길거리 음식 지도 사이트</p>
        <a class="btn btn-lg btn-light" href="#about">지도보기</a>
    </div>
</header>
<!-- Map section-->
<section id="about">
    <div class="container px-4">
        <div class="row gx-4 justify-content-center">
            <div class="col-lg-8">
                <h2>About this page</h2>
                <p class="lead">This is a great place to talk about your webpage. This template is purposefully unstyled so you can use it as a boilerplate or starting point for you own landing page designs! This template features:</p>
                <ul>
                    <li>Clickable nav links that smooth scroll to page sections</li>
                    <li>Responsive behavior when clicking nav links perfect for a one page website</li>
                    <li>Bootstrap's scrollspy feature which highlights which section of the page you're on in the navbar</li>
                    <li>Minimal custom CSS so you are free to explore your own unique design options</li>
                </ul>
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
                <table class="table table-striped table-hover">
                    <tr data-toggle="modal" data-id="1" data-target="#orderModal">
                        <td style="min-width:30px; width: 7%">
                            #
                        </td>
                        <td style="min-width:50px; width: 58%">
                            제목
                        </td>
                        <td style="min-width:90px; width: 17%">
                            작성자
                        </td>
                        <td style="min-width:50px; width: 18%">
                            날짜
                        </td>
                    </tr>
                    <c:forEach items="${list}" var="vo">
                        <tr>
                            <td style="min-width:50px; width: 7%;">
                                <c:out value="${vo.b_no}"/>
                            </td>
                            <td style="min-width:50px; width: 58%;">
                                <c:out value="${vo.b_title}"/>
                            </td>
                            <td style="min-width:90px; width: 17%">
                                <c:out value="${vo.b_writer}"/>
                            </td>
                            <td style="min-width:50px; width: 18%">
                                <c:out value="${vo.b_dateformat}"/>
                            </td>
                        </tr>
                    </c:forEach>

                </table>

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Launch demo modal
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>




                <!-- Button trigger modal -->
                <button type="button" class="btn btn-dark btn-sm m-0" data-bs-toggle="modal" data-bs-target="#myModal">글쓰기</button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="myModalLabel">글 작성</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="/write" id="write">
                                    <div class="mb-3">
                                        <label for="recipient-name" class="col-form-label">제목</label>
                                        <input type="text" class="form-control" id="recipient-name" name="b_title">
                                    </div>
                                    <div class="mb-3">
                                        <label for="message-text" class="col-form-label">내용</label>
                                        <textarea class="form-control" id="message-text" name="b_content"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                <button type="submit" class="btn btn-primary" form="write">작성</button>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>
</section>
<!-- Contact section-->
<section id="contact">
    <div class="container px-4">
        <div class="row gx-4 justify-content-center">
            <div class="col-lg-8">
                <h2>Contact us</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero odio fugiat voluptatem dolor, provident officiis, id iusto! Obcaecati incidunt, qui nihil beatae magnam et repudiandae ipsa exercitationem, in, quo totam.</p>
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
<script src="resources/js/scripts.js"></script>
</body>
</html>