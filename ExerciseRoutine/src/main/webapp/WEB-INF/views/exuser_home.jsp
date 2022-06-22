<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
#complete{
	text-align : center;
}
h3{
	text-align : center;
}
#but{
	position: relative;
    bottom: 10px;
    right:1px;
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
#date{
	margin-left:auto;
	margin-right:auto;
	text-align : center;
}
</style>
<script type="text/javascript">
	function addset(obj) {
		var no = $(obj).attr("data-exno");
		var name = $(obj).attr("data-exname");
		var part = $(obj).attr("data-expart");
		console.log($(obj).parent().children("table"));
		$(obj).parent().children("table").append("<tr><td>"+no+"</td><td>"+name+"</td><td>"+part+"</td><td><input type='text' style='width:30px;'></td><td><input type='text' style='width:30px;'></td><td><input type='text' style='width:30px;'></td><td><input type='button' value='저장'></td></tr>");
		
	}
</script>
<body>

<div id="head">
	<h3>날자입력</h3>
	<div id="date">
	<form action="/exuser/exuserhome2">
		<input type="text" name="date" value="${date}">
		<input class="btn btn-outline-primary" type="submit" value="확인">
	</form>
	</div>
</div>
<div id="todaylist">
<div class="col-sm-6">
		<c:choose>
			<c:when test="${empty list }">
					<h3>--------오늘의 운동이 없습니다--------<h3><br>
					<input type="button" value="운동 추가하기" onclick="location.href='/exlist/exlist_serch'">
			</c:when>
			<c:otherwise>
				<h1>${date} 운동 리스트</h1>
<<<<<<< HEAD
				<div id="complete">
					<input type="button" value="운동추가" onclick="">
					<input type="button" value="불러오기" onclick="">
					<button type="submit">저장</button>
				</div><br>
				
				<c:set var="done_loop" value="false"/>
				
			<c:forEach var="mynum" begin="1" end="7" step="1">

				<div>
				<table>
					<colgroup>
						<col width="30">
						<col width="100">
						<col width="50">
						<col width="40">
						<col width="50">
						<col width="50">
						<col width="50">
					</colgroup>
					<c:forEach items="${list}" var="dto"> 
						<c:if test="${dto.exno eq mynum}">
=======
				<table class="table">
					<tr>
						<th>순서</th>
						<th>운동이름</th>
						<th>타입</th>
						<th>SET</th>	
						<th>REP</th>	
						<th>VOL</th>
						<th>확인</th>
					</tr>
					<c:forEach items="${list}" var="dto">
						
						<c:if test="${dto.exset eq 1}">
							<tr>
								<td colspan="7" align="right">
									<input class="btn btn-outline-primary" type="button" value="${dto.exname}삭제" 
									onclick="location.href='/exuser/delete?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
									<input class="btn btn-outline-primary" type="button" value="세트삭제" onclick="location.href='/exuser/delLast?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
									<button class="btn btn-outline-primary" id="${dto.exno}" onclick="addset(this)">세트추가</button>
								</td>
							</tr>
						</c:if>
						
>>>>>>> 77d2b404f97390d368f3eb288043d4b7ebc7617f
						<tr>
							<td>${dto.exno}</td>
							<td>${dto.exname}</td>
							<td>${dto.expart}</td>
							<td>${dto.exset}</td>
							<td>${dto.exrep}</td>
							<td>${dto.exvol}</td>
							
							<c:choose>
								<c:when test="${dto.excheck eq 0}">
									<td><input type="checkbox"></td>
								</c:when>
								<c:otherwise>
									<td><input type="checkbox" checked="checked"></td>
								</c:otherwise>
							</c:choose>
						</tr>
<<<<<<< HEAD

							<c:if test="${dto.exset eq 1}">
								<br>
								<input type="button" value="${dto.exname}삭제" 
								onclick="location.href='/exuser/delete?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
								<input type="button" value="세트삭제" onclick="location.href='/exuser/delLast?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
								<button data-exno="${dto.exno}" data-exname="${dto.exname }" data-expart="${dto.expart }" onclick="addset(this)">세트추가</button>
							</c:if>
						</c:if>
					</c:forEach>
				</table>
				</div>
					<br>

			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>

=======
					</c:forEach>
			</c:otherwise>
		</c:choose>
		</table>
		</div>
</div>
<div id="complete">
	<input class="btn btn-outline-primary" type="button" value="운동추가" onclick="">
	<input class="btn btn-outline-primary" type="button" value="불러오기" onclick="">
	<button class="btn btn-outline-primary" type="submit">저장</button>
</div>
<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="일별운동" onclick="location.href='/exuser/exuserhome'">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlistlibrary/list'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
>>>>>>> 77d2b404f97390d368f3eb288043d4b7ebc7617f
</body>
</html>