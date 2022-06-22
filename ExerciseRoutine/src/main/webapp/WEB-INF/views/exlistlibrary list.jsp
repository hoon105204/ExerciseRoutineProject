<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   padding-top: 30px;
   overflow: auto;
}
#btn{
   text-align: center;
   padding-bottom: 30px;
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
#exbtn{
	text-align: center;
	margin: 10px;
	font-size: 14px;
}
#search {
	text-align: center;
	font-size: 13px;
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
<style>
</style>
</head>
 <article>
      <div class="container">
         <div class="table-responsive">
	<h2>Exlistlibrary</h2>
<div id="scrool">
	<div id="search">
		<input type="text" name="filter">
		<button type="submit">검색</button>
	</div>
		<div id="exbtn">
			<button name="하체">하체</button>
			<button name="가슴">가슴</button>
			<button name="등">등</button>
			<button name="팔">팔</button>
			<button name="전체">전체</button>
		</div>
	<table class="table table-striped table-sm">
			<thead>
				<th>운동 이름</th>
				<th>분류</th>
			</thead>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td><a href="https://www.youtube.com/results?search_query=${dto.liname }" target="_blank">${dto.liname}</a></td>
						<td>${dto.lipart}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="exbtn">
			<button type="button" value="운동추가" onclick="location.href='/exlistlibrary/insertform'">운동추가</button>
			<button type="button" value="운동삭제" onclick="location.href='/exlistlibrary/deleteform'">운동삭제</button>
		</div>	
	<div id="footer" >
		<div id="btn">
			<tr>
				<td colspan="5" align="center">
				<button type="button" value="홈" onclick="location.href='/sign/home'">홈</button>
				<button type="button" value="캘린더" onclick="location.href='/calendar/calendarhome'">캘린더</button>
				<button type="button" value="라이브러리" onclick="location.href='/exlistlibrary/list'">라이브러리</button>
				<button type="button" value="게시판" onclick="location.href='/exboard/list'">게시판</button>
				<button type="button" value="마이페이지" onclick="location.href='/mypage/mypagehome'">마이페이지</button>
				</td>
			</tr>
		</div>
	</div>
	</div>
	</div>
	</div>
	</article>
</body>
</html>