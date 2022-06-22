<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<style type="text/css">
body {
   margin: 10%;
   padding-right: 10%;
   padding-left: 10%;
}
button {
  margin: 0px 3px;
  padding: 8px 24px;
  border-radius: 20px;
  cursor: pointer;
  border: 0px;
}
button:hover {
  color: white;
  background-color: #0093e9;
  transition: 250ms ease-out;
}
 #select {
	width:30%;
} 
</style>
</head>
<body>
	<h1>exlist insert form</h1>
	<form action="insert" method="post">
		<table class="table table-condensed">
			<tr>
				<th>운동 이름</th>
				<td><input type="text" required="required" name="liname"></td>
			</tr>
			<tr>
				<th>타입</th>
				<td>
					<div id="select">
					<select class="browser-default custom-select" autofocus name="lipart">
						<option selected>하체</option>
						<option value="가슴">가슴</option>
						<option value="등">등</option>
						<option value="팔">팔</option>
					</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="submit" value="제출">제출</button>
					<button type="button" value="취소" onclick="location.href='/exlistlibrary/list'">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>