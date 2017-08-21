<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="container">
<div id="contentsArea">
<section id="titlename">
<h1>Qna게시판 내용</h1>
<p class="formSign">Qna게시판의 글 내용입니다.</p>
<div id="joinForm">
<input type="hidden" name="qna_number" value="<c:out value="${qnaDTO.qna_number}"/>">
<fieldset>
<!-- <legend>Qna게시판 내용</legend> -->
<p>
<label for="id">작성자</label><br/>
<c:out value="${qnaDTO.id}"/>
</p>
<p>
<label for="qna_title">제목</label><br/>
<c:out value="${qnaDTO.qna_title}"/>
</p>
<p>
<label for="qna_contents">내용</label><br/>
<c:out value="${qnaDTO.qna_contents}"/>
</p>
<c:choose>
<c:when test="${!empty qnaDTO.attached_file}">
<p>
<label for="attached_file">파일 첨부</label><br/>
<c:out value="${qnaDTO.attached_file}"/>&nbsp;&nbsp;&nbsp;
<a href="./qnaUpload/<c:out value="${qnaDTO.attached_file}"/>">파일 내용보기</a>
<input type="hidden" name="old_file" value="<c:out value="${qnaDTO.attached_file}"/>"/>
&nbsp;&nbsp;&nbsp;
<a href="./QnaDownload.qna?attached_file=<c:out value="${qnaDTO.attached_file}"/>">
파일 다운로드
</a>
<br/>
</p>
</c:when>
<c:otherwise>
<p>
<label for="old_file">파일 첨부</label><br/> 첨부 파일이 없습니다.
</p>
</c:otherwise>
</c:choose>
<div class="btnJoinArea">
<a href="./QnaReplyMove.qna?qna_number=<c:out value="${qnaDTO.qna_number}"/>">
<button type="button" class="btnOk">답변</button>
</a>
<c:if test="${(id == qnaDTO.id) || (id=='admin')}">
<a href="./QnaModify.qna?qna_number=<c:out value="${qnaDTO.qna_number}"/>">
<button type="button" class="btnOk">수정</button>
</a>
<a href="./QnaDelete.qna?qna_number=<c:out value="${qnaDTO.qna_number}"/>">
<button type="button" class="btnOk">삭제</button>
</a>
</c:if>
<button type="button" value="button" onclick="location.href='./QnaList.qna'" class="btnOk">
목록
</button>
</div>
</fieldset>
</div>
</section>
</div>
</div>
</body>
</html>