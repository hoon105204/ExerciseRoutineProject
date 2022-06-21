<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
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
#footer{
	position: fixed;
	bottom: 0px;
}
</style>
</head>
<body bgcolor="skyblue">
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
			</thead>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td>${dto.liname}</td>
						<td>${dto.lipart}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div id="footer">
		<table>
			<tr>
				<td colspan="5" align="center">
				<input type="button" value="홈" onclick="location.href=''">
				<input type="button" value="캘린더" onclick="location.href=''">
				<input type="button" value="라이브러리" onclick="location.href='/exlist/listhome'">
				<input type="button" value="게시판" onclick="location.href=''">
				<input type="button" value="마이페이지" onclick="location.href=''">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>