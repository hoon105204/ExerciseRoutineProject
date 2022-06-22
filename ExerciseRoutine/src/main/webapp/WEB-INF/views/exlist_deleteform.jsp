<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<style type="text/css">
.col-sm-6{
	margin-left:auto;
	margin-right:auto;
	text-align : center;
}
table{
	text-align : center;
}
</style>
</head>
<body class="text-center">
	<h1>exlist_deleteform</h1>
	<a href="/exlist/listhome" style="text-decoration: none;">돌아가기</a>
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
	<div>
		<div class="col-sm-6">
		<table class="table">
			<thead>
				<th>운동 이름</th>
				<th>분류</th>
				<th>삭제</th>
			</thead>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td>${dto.liname}</td>
						<td>${dto.lipart}</td>
						<td>
							<button class="btn btn-outline-primary" onclick="location.href='/exlist/delete?liname=${dto.liname}'">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>