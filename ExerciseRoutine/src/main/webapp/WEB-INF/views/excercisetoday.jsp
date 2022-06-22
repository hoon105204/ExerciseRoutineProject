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
	<div id="buttonlist">
		<table>
		<div id="calendar">
			<tr>
				<td width="100">
				<input type="button" value="calendar" onclick="location.href='/calendar/calendarhome'">
				</td>
			</tr>
			</div>
			<div id="plan">
			<tr>
				<td width="500">
				<input type="button" value="계획생성하기" onclick="location.href=''">
				</td>
			</tr>
			</div>
			<div id="etc"></div>			
			<tr>
				<td width="300">
				<input type="button" value="불러오기" onclick="location.href=''">
				</td>
				<td width="300">
				<input type="button" value="휴식" onclick="location.href=''">
				</td>
			</tr>
			</div>
		</table>
	</div>
	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href='/calendar/calendarhome'">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlistlibrary/list'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
	
</body>
</html>