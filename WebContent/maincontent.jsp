<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	var options = { videoId: 'iIX9ni6GNBg', start: 3};
	$("#wrapper").tubular(options);
});
</script>


<!-- bootstrap css 설정 -->
<link href="./boot/css/bootstrap.min.css" rel="stylesheet" />
<!-- jquery.js 설정 -->
<script type="text/javascript" src="./boot/js/jquery-1.12.4.min.js"></script>
<!-- bootstrap.js 설정 -->
<script type="text/javascript" src="./boot/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/jquery.tubular.1.0.js"></script>

<style type="text/css">

body {
	margin : 0;
	padding : 0;
	background : url (img.jpg) center center fixed no-repeat;
}
video {
	position : fixed;
	top : 0; 
	left : 0;
	min-width : 100 %;
	min-height : 100 %;
	width : auto;
	height : auto;
	z-index : -1;
}

</style>

</head>


<body style="background-color: transparent;">
<!-- <div id="wrapper"> -->
<!-- <div class="container"> -->
 	<video autoplay loop poster = "img.jpg"> 
 		<source style="width: 100%; height: 100%;" src = "movie.mp4" type = "video/mp4"> 
	 </video> 
	 
<!-- 	 <div class="maintext" style="margin-top: 770px"> -->
<!-- 	 <p class="h3 text-center" > &lt;언어 교육를 위한 환경 조성&gt; </p> -->
<!-- 	 <p class="h2 text-center text-warning" >-</p> -->
<!-- 	 <p class="h4 text-center text-muted"> <em>Gift gifts</em>는 국가와 지역의 경계를 허물고 자유로운 언어교육을 <font color="black" size="10px"></font></p> -->
<!-- 	 <p class="h4 text-center text-muted"> 원활히 하기 위해 제작되었습니다. <em>Gift gifts</em>는 기존의 사이트들과<font color="black" size="10px"></font></p> -->
<!-- 	 <p class="h4 text-center text-muted"> 판매자와 구매자간의 매칭에서부터 교육을 위환 환경까지 조성했습니다.<font color="black" size="10px"></font></p> -->
<!-- 	 <p class="h4 text-center text-muted"> Gift gifts에서 언어의 벽을 허무세요<font color="black" size="10px"></font></p> -->
	 
	 
	 
<!-- 	 </div> -->
	 
<!-- </div> -->
<!-- </div> -->




</body>

</html>