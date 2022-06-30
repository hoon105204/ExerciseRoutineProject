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
	
$(document).ready(function() {
    let message = "${msg}";
    if (message != "") {
        alert(message);
    }else {
    }
})
</script>
<body class="text-center">
	<div style="padding: 300px;">
		<h1 >Exercise Routine Web</h1>
	</div>
	
	<form class="form-signin" action="/sign/login" method="post">
		<table>
			<tr>
				<th>I D</th>
				<td><input class="form-control" type="text" name="userid"></td>
			</tr>
			<tr>
				<th>P W</th>
				<td><input class="form-control" type="password" name="userpw"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" class="btn btn-primary" value="로그인">
					<input type="button" class="btn btn-primary" value="회원가입" onclick="location.href='/sign/sign_up'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>