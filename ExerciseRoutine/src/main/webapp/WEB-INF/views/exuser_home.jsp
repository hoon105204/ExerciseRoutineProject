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
<body>
<div id="head">
	<h3>오늘 날짜 : (덕수씨 캘린더 연동?)</h3>
</div>
<div id="todaylist">
		<c:choose>
			<c:when test="${empty list }">
					<h3>--------오늘의 운동이 없습니다--------<h3><br>
					<input type="button" value="운동 추가하기" onclick="location.href='/exuser/addform'">
			</c:when>
			<c:otherwise>
				<h1>오늘 운동 리스트</h1>
				<table border="1">
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
									<input type="button" value="${dto.exname}삭제" 
									onclick="location.href='/exuser/delete?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
									<input type="button" value="세트삭제" onclick="location.href='/exuser/delLast?userid=${dto.userid}&exdate=${dto.exdate}&exname=${dto.exname}&exno=${dto.exno}'">
									<button>세트추가</button>
								</td>
							</tr>
						</c:if>
						
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

					</c:forEach>
						<tr>
							<td colspan="7">
								<input type="button" value="운동추가" onclick="">
								<input type="button" value="불러오기" onclick="">
							</td>
						</tr>
				</table>
			</c:otherwise>
		</c:choose>
</div>
<div id="complete">
	<button type="submit">운동완료</button>
</div>
</body>
</html>