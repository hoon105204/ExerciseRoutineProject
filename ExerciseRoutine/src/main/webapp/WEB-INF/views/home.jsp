<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#but{

	text-align: center;
}

#button1 {
	width: 90px;
	height: 60px;
	margin-left:8px;
	margin-right:8px;
	border-radius: 5px;
}

#image{
	text-align: center;
	margin-top:50px;
}

#text{
	text-align: center;
	margin-top:-15px;
}

#name{
	text-align: right;
	margin-right:10px;
}
</style>
<body bgcolor="skyblue">
	<div id="name">${userid}님 환영합니다.</div>
	<div id="image">
		<img src="https://dimg.donga.com/wps/NEWS/IMAGE/2021/04/12/106357558.1.jpg" onclick="location.href=''">
	</div>
	<div id="text">
		<h3>이번주 운동</h3>
	</div>
	<div id="image">
		<img src="https://dimg.donga.com/wps/NEWS/IMAGE/2021/04/12/106357558.1.jpg" onclick="location.href=''">
	</div>
	<div id="text">
		<h3>루틴 추천 운동</h3>
	</div>
	 
	<div id="but">
		<span>
			<input type="button" id="button1" value="홈" onclick="location.href=''">
			<input type="button" id="button1" value="캘린더" onclick="location.href=''">
			<input type="button" id="button1" value="라이브러리"onclick="location.href=''">
			<input type="button" id="button1" value="게시판" onclick="location.href=''">
			<input type="button" id="button1" value="마이페이지" onclick="location.href=''">
		</span>
	</div>
	<!--
	<div class="btn-group" role="group" aria-label="Basic example">
  		<button type="button" class="btn btn-secondary">Left</button>
  		<button type="button" class="btn btn-secondary">Middle</button>
  		<button type="button" class="btn btn-secondary">Right</button>
	</div>
	-->
</body>
</html>