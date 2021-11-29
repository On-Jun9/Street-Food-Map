<%--
  Created by IntelliJ IDEA.
  User: HJGram
  Date: 2021-11-29
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <c:forEach items="${viewAll}" var="vo">
        <tr data-bs-toggle="modal" data-bs-target="#contentModal" data-bs-no="${vo.b_no}" data-bs-title="${vo.b_title}" data-bs-content="${vo.b_content}" data-bs-date="${vo.b_dateformat}">
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
<div>

    <ul class="pagination">
    <c:if test="${paging.startPage != 1 }">
        <a class="page-link" aria-label="Previous" href="/?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}#services">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
        </a>
    </c:if>
    <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
        <c:choose>
            <c:when test="${p == paging.nowPage }">
                <li class="page-item active">
                    <b class="page-link">${p }</b>
                </li>
            </c:when>
            <c:when test="${p != paging.nowPage }">
                <li class="page-item">
                    <a class="page-link" href="/?nowPage=${p }&cntPerPage=${paging.cntPerPage}#services">${p }</a>
                </li>
            </c:when>
        </c:choose>
    </c:forEach>
    <c:if test="${paging.endPage != paging.lastPage}">
        <a class="page-link" aria-label="Next" href="/?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}#services">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
        </a>
    </c:if>
    </ul>
</div>


<!-- Write Button trigger modal -->
<button type="button" class="btn btn-dark btn-sm m-0" data-bs-toggle="modal" data-bs-target="#writeModal">글쓰기</button>


