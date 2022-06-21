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
h1 {
	text-align: center;
}
</style>
<body bgcolor="skyblue">
	<h1>회원가입</h1>
	<form action="/sign/insert" method="post">
		<table>
			<tr>
				<th>I D</th>
				<td><input type="text" name="memberid"></td>
				<td><input type="button" value="중복확인" onclick="location.href='/sign/check'"></td>
			</tr>
			<tr>
				<th>P W</th>
				<td><input type="password" name="memberpw"></td>
			</tr>
			<tr>
				<th>이 름</th>
				<td><input type="password" name="membername"></td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>남<input type="radio" name="gender" value="M">
				    여<input type="radio" name="gender" value="F"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="birth"></td>
			</tr>
			<tr>
				<th>키</th>
				<td><input type="number" name="height" min="100" max="300" step="0.1"></td>
			</tr>
			<tr>
				<th>몸무게</th>
				<td><input type="number" name="weight" min="20" max="300" step="0.1"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="가입하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>