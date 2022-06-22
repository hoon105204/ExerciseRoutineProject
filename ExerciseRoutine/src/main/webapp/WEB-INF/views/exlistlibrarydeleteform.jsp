<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
   padding-right: 25%;
   padding-left: 25%;
   height: min-content;
}
.title {
	display: inline-block;
	padding-top:20px;
}
button {
  margin: 0px 3px;
  padding: 8px 24px;
  border-radius: 20px;
  cursor: pointer;
  border: 0px;
  font-size: 10pt;
}
button:hover {
  color: white;
  background-color: #0093e9;
  transition: 250ms ease-out;
}
#backbtn {
	display: inline-block;
}
#cenbtn {
	padding:10px;
	padding-top:1%;
}
#search-button {
  margin: 20px 0
}
#center-button {
  margin-bottom: 20px 
}
</style>
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
</head>
<h2 class="title">exlistlibrary deleteform</h2>
<div id="backbtn">
	<button type="button" value="돌아가기" onclick="location.href='/exlistlibrary/list'">
		돌아가기
	</button>
</div>
<div id="search-button">
	<input type="text" name="filter">
	<button type="submit">검색</button>
</div>

<div id="center-button">
	<button name="하체">하체</button>
	<button name="가슴">가슴</button>
	<button name="등">등</button>
	<button name="팔">팔</button>
	<button name="전체">전체</button>
</div>
<div>
		<table class="table table-condensed">
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
							<button onclick="location.href='/exlistlibrary/delete?liname=${dto.liname}'">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>