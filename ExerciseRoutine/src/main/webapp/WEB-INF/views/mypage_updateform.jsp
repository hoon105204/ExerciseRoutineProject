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
     	<table>
      		<tr>
	      		<th>ID</th>
	      		<td>${userinfo.userid }</td>
      		</tr>
      		<tr>
	      		<th>이름</th>
	      		<td><input type="text" value="${dto.username }"></td>
	      	</tr>	
      		<tr>
	      		<th>생년월일</th>
	      		<td><input type="text" value="${dto.birth }"></td>
	      	</tr>
	      	<tr>
	      		<th>성별</th>
	      		<td><input type="text" value="${dto.gender }"></td>
	      	</tr>
	      	<tr>
	      		<th>키</th>
	      		<td><input type="text" value="${dto.height }"></td>
	      	</tr>
	      	<tr>
	      		<th>몸무게</th>
	      		<td><input type="text" value="${dto.weight }"></td>
	      	</tr>
	      	<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정하기" onclick="location.href='/mypage/updateform'">
				</td>
			</tr>
		</table>
	</form>	
</div>	
	
</body>
</html>