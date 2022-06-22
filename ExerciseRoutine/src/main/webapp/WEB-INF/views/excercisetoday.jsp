<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
#but{
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px
}
</style>
</head>
<body>
	<div id="calendar">
		<input type="button" value="calendar" onclick="location.href='/calendar/calendarhome'">
	</div>
	<div id="plan">
		<input type="button" value="계획 생성하기" onclick="location.href='/exlist/exlist_serch'">
	</div>
	<div id="but">
		<span>
				<input type="button" value="맨몸 운동" onclick="location.href='https://www.youtube.com/results?search_query=%EB%A7%A8%EB%AA%B8+%EC%9A%B4%EB%8F%99'">
				<input type="button" value="골든 식스" onclick="location.href='https://www.youtube.com/results?search_query=%EA%B3%A8%EB%93%A0+%EC%8B%9D%EC%8A%A4'">
				<input type="button" value="하체 강화" onclick="location.href='https://www.youtube.com/results?search_query=%ED%95%98%EC%B2%B4+%EA%B0%95%ED%99%94'">
				<input type="button" value="5*5 루틴" onclick="location.href='https://www.youtube.com/results?search_query=5*5%EB%A3%A8%ED%8B%B4'">
				<input type="button" value="10*10 루틴" onclick="location.href='https://www.youtube.com/results?search_query=10*10%EB%A3%A8%ED%8B%B4'">
		</span>
	</div>
</body>
</html>