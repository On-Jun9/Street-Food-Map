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
    <c:forEach items="${list}" var="vo">
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

<!-- Write Button trigger modal -->
<button type="button" class="btn btn-dark btn-sm m-0" data-bs-toggle="modal" data-bs-target="#writeModal">글쓰기</button>


