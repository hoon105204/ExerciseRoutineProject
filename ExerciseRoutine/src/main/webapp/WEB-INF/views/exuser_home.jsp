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
				<table>
					<tr>
						<th>순서</th>
						<th>운동이름</th>
						<th>타입</th>
						<th>SET</th>	
						<th>REP</th>	
						<th>VOL</th>
					</tr>
					<c:set var="num" value="0"/>
					<c:forEach items="${list}" var="exuserdto">

						<c:if test="${exuserdto.exno ne num}">
							<c:set var="num" value="${num+1}"/>
							
							<tr>
								<td colspan="6">
									<input type="button" value="세트삭제" onclick="">
									<input type="button" value="세트추가" onclick="">
								</td>
							</tr>
						</c:if>
						<tr>
							<td>${exuserdto.exno}</td>
							<td>${exuserdto.exname}</td>
							<td>${exuserdto.expart}</td>
							<td>${exuserdto.exset}</td>
							<td>${exuserdto.exrep}</td>
							<td>${exuserdto.exvol}</td>
						</tr>
					</c:forEach>
						<tr>
							<td colspan="6">
								<input type="button" value="운동추가" onclick="">
								<input type="button" value="불러오기" onclick="">
							</td>
						</tr>
				</table>
			</c:otherwise>
		</c:choose>
</div>
	
</body>
</html>