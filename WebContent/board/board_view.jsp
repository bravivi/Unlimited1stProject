<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공부 게시판</title>

</head>
<body>
<div class="container">
<div id="contentsArea">
<section id="titlename">
<h1>공부 게시판 내용</h1>
<p class="formSign">공부 게시판의 글 내용입니다.</p>
<div id="joinForm">
<input type="hidden" name="study_post_index" value="<c:out value="${boardDTO.study_post_index}"/>">
<fieldset>
<legend>공부 게시판 내용</legend>
<p>
<label for="id">이름</label><br/>
<c:out value="${boardDTO.id}"/>
</p>
<p>
<label for="study_post_title">제목</label><br/>
<c:out value="${boardDTO.study_post_title}"/>
</p>
<p>
<label for="study_post_contents">내용</label><br/>
<c:out value="${boardDTO.study_post_contents}"/>
</p>
<c:choose>
<c:when test="${!empty boardDTO.attached_file}">
<p>
<label for="attached_file">파일 첨부</label><br/>
<c:out value="${boardDTO.attached_file}"/>&nbsp;&nbsp;&nbsp;
<a href="./boardUpload/<c:out value="${boardDTO.attached_file}"/>">파일 내용보기</a>
<input type="hidden" name="old_file" value="<c:out value="${boardDTO.attached_file}"/>"/>
&nbsp;&nbsp;&nbsp;
<a href="./BoardDownload.study?attached_file=<c:out value="${boardDTO.attached_file}"/>">
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
<a href="./BoardReplyMove.study?study_post_index=<c:out value="${boardDTO.study_post_index}"/>">
<button type="button" class="btnOk">답변</button>
</a>
<c:if test="${(id==boardDTO.id) ||(id=='admin')}">
<a href="./BoardModify.study?study_post_index=<c:out value="${boardDTO.study_post_index}"/>">
<button type="button" class="btnOk">수정</button>
</a>
<a href="./BoardDelete.study?study_post_index=<c:out value="${boardDTO.study_post_index}"/>">
<button type="button" class="btnOk">삭제</button>
</a>
</c:if>
<button type="button" value="button" onclick="location.href='./BoardList.study'" class="btnOk">
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