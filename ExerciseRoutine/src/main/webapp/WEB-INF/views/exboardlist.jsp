<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>exboard</title>
<style>
body {
   padding-top: 100px;
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
a {
 text-decoration: none;
 color: #000;
}
thead .text-center {
 height:40px;
 color: #0093e9;
 margin: 30px 0;
}
<<<<<<< HEAD
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
=======
#btn{
   text-align: center;
   position: absolute;
   bottom: 5%;
   left: 50%;
   transform: translate(-50%, 0);
}
button1 {
  margin: 0px 3px;
  padding: 8px 24px;
  border-radius: 20px;
  cursor: pointer;
  border: 0px;
  text-align: center;
}
button1:hover {
  color: white;
  background-color: #0093e9;
  transition: 250ms ease-out;
}
#btn1 {
	position:absolute;
	right:30%;
>>>>>>> branch 'master' of https://github.com/hoon105204/ExerciseRoutineProject.git
}
</style>
</head>
<body>
   
    <article>
      <div class="container">
         <div class="table-responsive">
         <h2>Exboard list</h2>
            <table class="table table-striped table-sm">
               <colgroup>
                  <col style="width: 10%;" />
                  <col style="width: auto;" />
                  <col style="width: 15%;" />
                  <col style="width: 10%;" />
               </colgroup>
               <thead>
                  <tr class="text-center">
                     <th>번호</th>
                     <th>글제목</th>
                     <th>작성자</th>
                     <th>작성일</th>
                  </tr>
               </thead>
               <tbody>
                  <c:choose>
                     <c:when test="${empty list }">
                        <tr>
                           <td colspan="4" class="text-center">-------작성된 글이 존재하지 않습니다.-------</td>
                        </tr>
                     </c:when>
                     <c:otherwise>
                        <c:forEach items="${list }" var="dto">
                           <tr class="text-center">
                              <td>${dto.bno }</td>
                              <td><a href="/exboard/detail?bno=${dto.bno}">${dto.title }</a></td>
                              <td>${dto.username }</td>
                              <td>${dto.bdate }</td>
                           </tr>
                        </c:forEach>
                     </c:otherwise>
                  </c:choose>
               </tbody>
            </table>
         </div>
         <div id="btn1">
            <button type="button" value="글쓰기" onclick="location.href='/exboard/insertform'">글쓰기</button>
         </div>
         </div>
   </article>
   <div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href=''">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlist/listhome'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
</body>
</html>