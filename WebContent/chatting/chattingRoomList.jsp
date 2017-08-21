<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./boot/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="./boot/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
</head>
<body>

	<form action="ChattingServlet" method="post" style="border: 1px solid;">
		<input type="hidden" name="command" value="searchlist"> <label
			for="language">언어:</label> <select name="language">
			<option value="영어">영어</option>
			<option value="중국어">중국어</option>
			<option value="일본어">일본어</option>
			<option value="한국어">한국어</option>
			<option value="기타">기타</option>
		</select> &nbsp; <label for="nationality">국가:</label> <select
			name="nationality">
			<option value="미국">미국</option>
			<option value="호주">호주</option>
			<option value="영국">영국</option>
			<option value="필리핀">필리핀</option>
			<option value="중국">중국</option>
			<option value="일본">일본</option>
			<option value="한국">한국</option>
			<option value="기타">기타</option>
		</select> &nbsp; <label for="studytime">시간:</label> <select name="studytime">
			<option value="10">10분</option>
			<option value="20">20분</option>
			<option value="30">30분</option>
			<option value="상의">상의</option>

		</select> <br> <label for="studypoint">10분당 포인트:</label> <select
			name="studypoint">
			<option value="1000">0~1000 POINT</option>
			<option value="2000">1001~2000 POINT</option>
			<option value="3000">2001~3000 POINT</option>
			<option value="3001">3001 POINT 이상</option>
		</select> <br> <input type="submit"
			value="                    검         색                     ">
	</form>

	<div>
		<h1>커뮤니케이션 리스트</h1>
	</div>
	<hr>
	<c:forEach var="chatRoom" items="${chatRoomsList }">
		<!-- session 아이디 설정해줘야 함. -->

		<table id="chatroomlist"
			style="border: 1px solid; text-align: center;"
			onclick="enterServlet(${chatRoom.chatRoomNum });">
			<tr>
				<th class="text-center">&nbsp;강의실 번호&nbsp;</th>
				<th class="text-center">&nbsp;제목&nbsp;</th>
				<th class="text-center">&nbsp;국적&nbsp;</th>
				<th class="text-center">&nbsp;언어&nbsp;</th>
				<th class="text-center">&nbsp;강의 시간&nbsp;</th>
				<th class="text-center">&nbsp;10분당 포인트&nbsp;</th>
			</tr>
			<tr>
				<td class="text-center">&nbsp;${chatRoom.chatRoomNum }&nbsp;</td>
				<th class="text-center">&nbsp;${chatRoom.roomTitle }&nbsp;</th>
				<th class="text-center">&nbsp;${chatRoom.nationality }&nbsp;</th>
				<th class="text-center">&nbsp;${chatRoom.language }&nbsp;</th>
				<th class="text-center">&nbsp;${chatRoom.studytime }&nbsp;</th>
				<th class="text-center">&nbsp;${chatRoom.studypoint }&nbsp;</th>
			</tr>
		</table>

		<hr>

		<input type="hidden" class="roomNum" value="${chatRoom.chatRoomNum}">
		<input type="hidden" class="title" value="${chatRoom.roomTitle }">
		<input type="hidden" class="nationality" value="${chatRoom.nationality }">
		<input type="hidden" class="language" value="${chatRoom.language }">
		<input type="hidden" class="studytime" value="${chatRoom.studytime }">
		<input type="hidden" class="studypoint" value="${chatRoom.studypoint }">

	</c:forEach>

	<hr>
	<div>
		<button
			onclick="window.open('chatting/makeNewChatRoom.html', 'popup01', 'width=400, height=650, scrollbars= 0, toolbar=0, menubar=no')">새
			커뮤니케이션</button>
	</div>
	<script>
		
	var roomNum = $(".roomNum").val();
	var title = $(".title").val();
	var nationality = $(".nationality").val();
	var language = $(".language").val();
	var studytime = $(".studytime").val();
	var studypoint = $(".studypoint").val();
	
	var enterServlet = function(chatRoomNum){
		
		$.ajax({
			
			url : 'ChattingServlet?command=enterchat&chatRoomNum='+chatRoomNum,
			type : 'GET',
			dataType : 'json',
			success : function(data) {

				var answer = data.answer;
				
				if(answer == "!"){
					alert("현재 교육 중입니다.");					
				} else if(answer == "@"){
					alert("회원이 아닙니다. 로그인을 해주세요.");
				} else if(answer == "#"){
					alert("이미 입장했습니다.");
					alert("asd");
					alert(roomNum  + title + nationality + language + studytime + studypoint);
				} else if(answer == "$"){
					
					alert("여기와");
					window.open('chattingRoom.jsp?roomNum='+roomNum+'&title='+title+'&nationality='+nationality+'&language='+language+'&studytime='+studytime+'&studypoint='+studypoint,'popup02','width=400,height=650,scrollbars=0,toolbar=0,menubar=no');
				}
			}
			
		});
		
	}
	
</script>
</body>
</html>