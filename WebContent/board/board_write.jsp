<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시판</title>

</head>
<body>
<div class="container">
<div id="contentsArea">
<section id="titlename">
<h1>공부 게시판 글쓰기</h1>
<p class="formSign">
<strong class="require">필수</strong>는 반드시 입력해야 하는 항목입니다.
</p>
<form action="./BoardAdd.study" method="post" id="joinForm" name="boardform" enctype="multipart/form-data">
<fieldset>
<legend>공부 게시판 글쓰기</legend>
<p>
<input type="hidden" id="id" name="id" required="required" value="${id}"/>
</p>
<p>
<label for="password">암호<strong class="require">필수</strong></label>
<input type="password" id="password" name="password" required="required" placeholder="영문/숫자 4~8자 이내"/>
</p>
<p>
<label for="study_post_title">제목<strong class="require">필수</strong></label>
<input type="text" id="study_post_title" name="study_post_title" required="required" placeholder="글의 제목을 입력하세요."/>
</p>
<p>
<label for="study_post_contents">내용<strong class="require">필수</strong></label>
<textarea id="study_post_contents" name="study_post_contents" cols="74" rows="15" required="required" placeholder="글의 내용을 입력하세요.">
</textarea>
</p>
<p>
<label for="attached_file">파일첨부</label>
<input type="file" id="attached_file" name="attached_file" placeholder="파일첨부"/>
</p>
<div class="btnJoinArea">
<button type="submit" class="btnOk">글 등록</button>
<button type="reset" class="btnCancel">취소</button>
<button type="button" value="button" onclick="location.href='./BoardList.study'" class="btnOk">목록
</button>
</div>
</fieldset>
</form>
</section>
</div>
</div>
</body>
</html>