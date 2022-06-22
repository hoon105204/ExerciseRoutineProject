<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
	
<style>
table{
	margin-left:auto;
	margin-right:auto;
	text-align: center;
}
h1{
	text-align: center;
}
.col-sm-6{
	margin-left:auto;
	margin-right:auto;
	text-align : center;
}
</style>

<body class="p-3 mb-2 bg-light text-dark">
	<h1>mypage updateform</h1>
<div>
	<div class="col-sm-6">
	<form action="updateres.do" method="post">
		<input type="hidden" name="userid" value="${userinfo.userid }">
     	<table class="table">
      		<tr>
	      		<th scope="col" width="40%">ID</th>
	      		<td scope="row" width="60%">${userinfo.userid }</td>
      		</tr>
      		<tr>
	      		<th>이름</th>
	      		<td><input class="form-control" type="text" name="username" value="${userinfo.username }">${dto.username }</td>
	      	</tr>	
      		<tr>
	      		<th>생년월일</th>
	      		<td><input class="form-control" type="text" name="birth" value="${userinfo.birth }">${dto.birth }</td>
	      	</tr>
	      	<tr>
	      		<th>성별</th>
	      		<td><input class="form-control" type="text" name="gender" value="${userinfo.gender }">${dto.gender }</td>
	      	</tr>
	      	<tr>
	      		<th>키</th>
	      		<td><input class="form-control" type="text" name="height" value="${userinfo.height}">${dto.height }</td>
	      	</tr>
	      	<tr>
	      		<th>몸무게</th>
	      		<td><input class="form-control" type="text" name="weight" value="${userinfo.weight }">${dto.weight }</td>
	      	</tr>
	      	<tr>
				<td colspan="2" align="right">
					<input class="btn btn-outline-primary" type="submit" value="확인">
					<input class="btn btn-outline-primary" type="button" value="취소" onclick="location.href='/mypage/mypagehome'">
				</td>
			</tr>
		</table>
	</form>	
	</div>
</div>	
	
</body>
</html>