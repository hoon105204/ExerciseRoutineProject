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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
table{
   margin-left: auto;
   margin-right: auto;
}
h1{
   text-align: center;
}
</style>
<body>
	<h1>exlist insert form</h1>
	<div>
	<form action="insert" method="post">
		<table>
			<tr>
				<th>운동 이름</th>
				<td><input class="form-control" type="text" required="required" name="liname"></td>
			</tr>
			<tr>
				<th>타입</th>
				<td>
					<select autofocus name="lipart">
						<option value="하체">하체</option>
						<option value="가슴">가슴</option>
						<option value="등">등</option>
						<option value="팔">팔</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input class="btn btn-outline-primary" type="submit" value="제출">
					<input class="btn btn-outline-primary" type="button" value="취소" onclick="location.href='/exlist/listhome'">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>