<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>
body {
   padding-top: 70px;
   padding-bottom: 30px;
}
</style>
<title>exboard</title>
</head>
<body>
   <article>
      <div class="container" role="main">
         <h2>board Form</h2>
         <form name="form" method="post">
            <div class="mb-3">
               <label for="title">제목</label> 
               <input type="text" name="title" placeholder="제목을 입력해 주세요">
            </div>
            <div class="mb-3">
               <label for="username">${dto.username }</label> 
            </div>
            <div class="mb-3">
               <label for="content">내용</label>
               <textarea class="form-control" rows="5" name="content" placeholder="내용을 입력해 주세요"></textarea>
            </div>
         </form>
         <div>
            <button type="submit"  class="btn btn-sm btn-primary" value="완료">완료</button>
            <button type="button"  class="btn btn-sm btn-primary" value="취소" onclick="location.href='/exboard/list'">취소</button>
         </div>
      </div>
   </article>

</body>
</html>