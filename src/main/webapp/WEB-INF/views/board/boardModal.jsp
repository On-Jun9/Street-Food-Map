<%--
  Created by IntelliJ IDEA.
  User: HJ
  Date: 2021-11-29
  Time: 오후 6:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- 글작성 Modal -->
<div class="modal fade" id="writeModal" tabindex="-1" aria-labelledby="writeModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="writeModalLabel">글 작성</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/write" id="write">
                    <div class="mb-3">
                        <label for="recipient-name1" class="col-form-label">제목</label>
                        <input type="text" class="form-control" id="recipient-name1" name="b_title">
                    </div>
                    <div class="mb-3">
                        <label for="message-text1" class="col-form-label">내용</label>
                        <textarea class="form-control" id="message-text1" name="b_content"></textarea>
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
<div class="modal fade" id="contentModal" tabindex="-1" aria-labelledby="contentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #e6e6e7">
                <h5 class="modal-title" id="contentModalLabel">글 내용</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="contentModalBody">
                <div class="mb-3">
                    에러
                </div>
            </div>
            <div class="modal-footer-date" id="contentModalFooter">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-target="#modifyModal" data-bs-toggle="modal" data-bs-dismiss="modal">수정</button>
                <button type="button" class="btn btn-primary" data-bs-target="#deleteModal" data-bs-toggle="modal" data-bs-dismiss="modal">삭제</button>
            </div>
        </div>
    </div>
</div>


<%--글 수정 Modal--%>
<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="modifyModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #e2a44f">
                <h5 class="modal-title" id="modifyModalLabel">글 수정</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/modify" id="modify">
                    <input type="hidden" id="modifyModalNo" name="b_no">
                    <div class="mb-3">
                        <label for="modifyModalTitle" class="col-form-label">제목</label>
                        <input type="text" class="form-control" id="modifyModalTitle" name="b_title">
                    </div>
                    <div class="mb-3">
                        <label for="modifyModalContent" class="col-form-label">내용</label>
                        <textarea class="form-control" id="modifyModalContent" name="b_content"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contentModal" data-bs-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-primary" form="modify" style="background-color: #e2a44f">수정</button>
            </div>
        </div>
    </div>
</div>

<%--글 삭제 Modal--%>
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #f0654f">
                <h5 class="modal-title" id="deleteModalLabel">글 삭제</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                정말 삭제하시겠습니까?
                <form method="post" action="/delete" id="delete">
                    <input type="hidden" id="deleteModalNo" name="b_no">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contentModal" data-bs-dismiss="modal">취소</button>
                <button type="submit" class="btn btn-primary" form="delete" style="background-color:#f0654f ">삭제</button>
            </div>
        </div>
    </div>
</div>
