<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table{
		margin:auto;
	}
	h1{
		text-align:center;
	}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
</script>
<body bgcolor="skyblue">
	<div style="padding: 300px;">
		<h1>웹페이지 이름</h1>
	</div>

	<form action="/sign/login" method="post">
		<table>
			<tr>
				<th>I D</th>
				<td><input type="text" name="userid"></td>
			</tr>
			<tr>
				<th>P W</th>
				<td><input type="password" name="userpw"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="로그인" onclick="">
					<input type="button" value="회원가입" onclick="location.href='/sign/sign_up'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
