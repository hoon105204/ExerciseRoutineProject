<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>exlist insert form</h1>
	<form action="insert" method="post">
		<table border="1">
			<tr>
				<th>운동 이름</th>
				<td><input type="text" required="required" name="liname"></td>
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
					<input type="submit" value="제출">
					<input type="button" value="취소" onclick="location.href='/exlist/listhome'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>