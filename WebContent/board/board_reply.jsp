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
<h1>답변 글 등록</h1>
<p class="formSign">
<strong class="require">필수</strong>는 반드시 입력해야 하는 항목입니다.
</p>
<form action="./BoardReply.study" method="post" id="joinForm" name="boardform" enctype="multipart/form-data">
<fieldset>
<input type="hidden" name="study_post_index" value="<c:out value="${boardDTO.study_post_index}"/>"/>
<input type="hidden" name="answer_num" value="<c:out value="${boardDTO.answer_num}"/>"/>
<input type="hidden" name="answer_lev" value="<c:out value="${boardDTO.answer_lev}"/>"/>
<input type="hidden" name="answer_seq" value="<c:out value="${boardDTO.answer_seq}"/>"/>
<legend>답변 글</legend>
<p>
<input type="hidden" id="id" name="id" required="required" value="${id}"/>
</p>
<p>
<label for="study_post_title">제목</label>
<input type="text" id="study_post_title" name="study_post_title" value="[답변]<c:out value="${boardDTO.study_post_title}"/>">
</p>
<p>
<label for="study_post_contents">내용</label>
<textarea name="study_post_contents" rows="15" cols="74"></textarea>
</p>
<p>
<label for="attached_file">파일 수정</label>
<input type="file" id="attached_file" name="attached_file"/>
</p>
<p>
<label for="password">비밀번호<strong class="require">필수</strong></label>
<input type="password" id="password" name="password" required="required" placeholder="비밀번호 입력" size="12"/>
</p>
<div class="btnJoinArea">
<button type="submit" class="btnOk">글 등록</button>
<button type="reset" class="btnCancel">취소</button>
<button type="button" value="button" onclick="location.href='./BoardList.study'" class="btnOk">목록</button>
</div>
</fieldset>
</form>
</section>
</div>
</div>
</body>
</html>