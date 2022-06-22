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
</style>
</head>
<body class="p-3 mb-2 bg-light text-dark">
	<h1>exlist home</h1>
	<div>
		<input type="text" name="filter">
		<button type="submit">검색</button>
		<div>
			<button name="하체">하체</button>
			<button name="가슴">가슴</button>
			<button name="등">등</button>
			<button name="팔">팔</button>
			<button name="전체">전체</button>
		</div>
	</div>
	<div>
		<table border="1">
			<thead>
				<th>운동 이름</th>
				<th>분류</th>
				<th>체크</th>
			</thead>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td>${dto.liname}</td>
						<td>${dto.lipart}</td>
						<td>
						<input type="checkbox" name="list">
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<div id="but">
		<span>
			<input type="submit" value="선택한 운동 추가하기(개수)" onclick="location.href='/exuser/exuserhome'">
		</span>
	</div>
</body>
</html>