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
        <tr data-bs-toggle="modal" data-bs-target="#orderModal">
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
<button type="button" class="btn btn-dark btn-sm m-0" data-bs-toggle="modal" data-bs-target="#myModal">글쓰기</button>

<!-- 글작성 Modal -->
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


<!-- 글 조회 Modal -->
<div class="modal fade" id="orderModal" tabindex="-1" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel2">글 작성</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary">작성</button>
            </div>
        </div>
    </div>
</div>

<script>
    // $(function(){
    //     $('#orderModal').modal({
    //         keyboard: true,
    //         backdrop: "static",
    //         show:false,
    //
    //     }).on('show', function(){ //subscribe to show method
    //         var getIdFromRow = $(event.target).closest('tr').data('id'); //get the id from tr
    //         //make your ajax call populate items or what even you need
    //         $(this).find('#orderDetails').html($('<b> Order Id selected: ' + getIdFromRow  + '</b>'))
    //     });
    // });
    document.getElementsByName("contentView").submit;
</script>
