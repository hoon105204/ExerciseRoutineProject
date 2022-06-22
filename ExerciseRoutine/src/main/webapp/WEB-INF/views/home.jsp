<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<style>
#but{
	position: relative;
    bottom: 10px;
    right:1px;
	text-align: center;
	width: 100%;
	margin-top: 20px

}
#button1 {
	
	width: 110px;
	height: 60px;
	margin-left:8px;
	margin-right:8px;
	border-radius: 5px;
	text-align: center;
}

#image{
	text-align: center;
	margin-top:30px;
}

#text{
	text-align: center;

}

#name{
	text-align: right;
	margin-right:10px;
}
</style>
<body class="p-3 mb-2 bg-light text-dark">
	<div id="name">${userid}님 환영합니다.
		<input class="btn btn-primary" type="button" value="로그아웃" onclick="location.href='/'">
	</div>
	<div id="image">
		<img src="https://dimg.donga.com/wps/NEWS/IMAGE/2021/04/12/106357558.1.jpg" onclick="location.href='/'">
	</div>
	<div id="text">
		<h3>이번주 운동</h3>
	</div>
	<div id="image">
		<img src="http://newsimg.hankookilbo.com/2018/03/07/201803070494276763_1.jpg" onclick="location.href='/exlist/listhome'">
	</div>
	<div id="text">
		<h3>루틴 추천 운동</h3>
	</div>
	 
	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href=''">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlist/listhome'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
</body>
</html>