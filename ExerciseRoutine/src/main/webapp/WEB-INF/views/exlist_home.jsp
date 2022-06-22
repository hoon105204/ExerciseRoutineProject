<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		
		$("button:eq(1)").click(function(){
			$(".하체").show();
			$(".가슴").hide();
			$(".등").hide();
			$(".팔").hide();
		});
		$("button:eq(2)").click(function(){
			$(".하체").hide();
			$(".가슴").show();
			$(".등").hide();
			$(".팔").hide();
		});
		$("button:eq(3)").click(function(){
			$(".하체").hide();
			$(".가슴").hide();
			$(".등").show();
			$(".팔").hide();
		});
		$("button:eq(4)").click(function(){
			$(".하체").hide();
			$(".가슴").hide();
			$(".등").hide();
			$(".팔").show();
		});
		$("button:eq(5)").click(function(){
			$(".하체").show();
			$(".가슴").show();
			$(".등").show();
			$(".팔").show();
		});
		
		
		$("button:eq(0)").click(function(){
			let filter = $("input[name=filter]").val();
			$("#showlist tr[name*="+filter+"]").show();
			$("#showlist tr").not("[name*="+filter+"]").hide();
		});
		
	});

</script>
<style>
table{
	text-align: center;
}
#but{
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px
}
#button1 {
	width: 110px;
	height: 60px;
	margin-left:8px;
	margin-right:8px;
	border-radius: 5px;
	text-align: center;
}
.col-sm-6{
	margin-left:auto;
	margin-right:auto;
	text-align : center;
}
</style>
</head>
<body class="text-center">
	<h1>exlist home</h1>
	<div>
		<input type="text" name="filter">
		<button class="btn btn-outline-primary" type="submit">검색</button>
		<div>
			<button class="btn btn-outline-primary" name="하체">하체</button>
			<button class="btn btn-outline-primary" name="가슴">가슴</button>
			<button class="btn btn-outline-primary" name="등">등</button>
			<button class="btn btn-outline-primary" name="팔">팔</button>
			<button class="btn btn-outline-primary" name="전체">전체</button>
		</div>
	</div>
	<div id="list">
		<div class="col-sm-6">
		<table class="table">
			<tr>
				<th scope="col">운동 이름</th>
				<th scope="col">분류</th>
			</tr>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td scope="row">${dto.liname}</td>
						<td>${dto.lipart}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
	
	<div>
		<input class="btn btn-outline-primary" type="button" value="운동추가" onclick="location.href='/exlist/insertform'">
		<input class="btn btn-outline-primary" type="button" value="운동삭제" onclick="location.href='/exlist/deleteform'">
	</div>
	
	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href='/exuser/exuserhome'">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlist/listhome'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
</body>
</html>