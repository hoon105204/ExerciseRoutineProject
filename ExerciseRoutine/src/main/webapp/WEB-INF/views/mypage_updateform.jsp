<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<style>
table{
	margin-left:auto;
	margin-right:auto;
}
</style>

<body bgcolor="skyblue">
	<h1>mypage updateform</h1>
<div>
	<form action="updateres.do" method="post">
		<input type="hidden" name="userid" value="${userinfo.userid }">
     	<table>
      		<tr>
	      		<th>ID</th>
	      		<td>${userinfo.userid }</td>
      		</tr>
      		<tr>
	      		<th>이름</th>
	      		<td><input type="text" name="username" value="${userinfo.username }">${dto.username }</td>
	      	</tr>	
      		<tr>
	      		<th>생년월일</th>
	      		<td><input type="text" name="birth" value="${userinfo.birth }">${dto.birth }</td>
	      	</tr>
	      	<tr>
	      		<th>성별</th>
	      		<td><input type="text" name="gender" value="${userinfo.gender }">${dto.gender }</td>
	      	</tr>
	      	<tr>
	      		<th>키</th>
	      		<td><input type="text" name="height" value="${userinfo.height}">${dto.height }</td>
	      	</tr>
	      	<tr>
	      		<th>몸무게</th>
	      		<td><input type="text" name="weight" value="${userinfo.weight }">${dto.weight }</td>
	      	</tr>
	      	<tr>
				<td colspan="2" align="right">
					<input type="submit" value="확인">
					<input type="button" value="취소" onclick="location.href='/mypage/mypagehome'">
				</td>
			</tr>
		</table>
	</form>	
</div>	
	
</body>
</html>