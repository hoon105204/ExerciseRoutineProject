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
}
</style>

<script type="text/javascript">
	function formatDate(date) {
    
    var d = new Date(date),
    
    month = '' + (d.getMonth() + 1) , 
    day = '' + d.getDate(), 
    year = d.getFullYear();
    
    if (month.length < 2) month = '0' + month; 
    if (day.length < 2) day = '0' + day; 
    
    return [year, month, day].join('-');
    
    }
</script>
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
         <div id="btn">
         		<button type="button" value="홈" onclick="location.href='/sign/home'">홈</button>
				<button type="button" value="캘린더" onclick="location.href='/calendar/calendarhome'">캘린더</button>
				<button type="button" value="라이브러리" onclick="location.href='/exlistlibrary/list'">라이브러리</button>
				<button type="button" value="게시판" onclick="location.href='/exboard/list'">게시판</button>
				<button type="button" value="마이페이지" onclick="location.href='/mypage/mypagehome'">마이페이지</button>
   		</div>
   </article>
</body>
</html>