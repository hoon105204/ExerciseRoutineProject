<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
Bootstrap CSS
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous"> -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="UTF-8">
<style type="text/css">
.form-container {
  height: 100vh;
  display:flex;
  align-items: center;
  justify-content: center;
} 
table {
    width: 700px;
    height: 380px;
    border-collapse: collapse;
    border-radius: 10px;
    border-style: hidden;
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
  }
th {
 color: #0093e9;
 text-aling:center;
 padding: 0px 30px;
}
td {
 height: 30px;
 border: node;
 padding: 10px;
 }
input {
  background-color: #f4f4f4;
  width: 300px;
  height: 28px;
  font-size: 16px;
  border:0 solid black;
  border-radius: 3px
}
input:focus {
  outline: none;
} 
textarea {
  font-size: 16px;
 width: 95%;
 border-radius: 10px;
 border: 1px solid #f4f4f4;
}
button {
  margin: 0px 3px;
  padding: 8px 24px;
  border-radius: 20px;
  cursor: pointer;
  border: 0px
}
button:hover {
  color: white;
  background-color: #0093e9;
  transition: 250ms ease-out;
}

/* button {
 color: #090909;
 padding: 0.7em 1.7em;
 font-size: 11px;
 border-radius: 0.5em;
 background: #e8e8e8;
 border: 1px solid #e8e8e8;
 transition: all .3s;
 box-shadow: 6px 6px 12px #c5c5c5,
             -6px -6px 12px #ffffff;
}

button:active {
 color: #666;
 box-shadow: inset 4px 4px 12px #c5c5c5,
             inset -4px -4px 12px #ffffff;
} */
</style>
<title>Insert title here</title>
</head>
<body>
   <form class="form-container" action="update" method="post">
      <input type="hidden" name="bno" value="${dto.bno }">
      <table class="board">
         <tr>
            <th>WRITER</th>
            <td>${dto.username }</td>
         </tr>
         <tr>
            <th>TITLE</th>
            <td>${dto.title }</td>
         </tr>
         <tr>
            <th>CONTENT</th>
            <td><textarea rows="10" cols="60" name="content" readonly="readonly">${dto.content }</textarea></td>
         </tr>
         <tr>
            <td colspan="2" align="right">
               <button type="button" value="수정" onclick="location.href='/exboard/updateform?bno=${dto.bno}'">수정</button>
               <button type="button" value="삭제" onclick="location.href='/exboard/delete?bno=${dto.bno}'">삭제</button>
               <button type="button" value="목록" onclick="location.href='/exboard/list'">목록</button>
            </td>
         </tr>
      </table>
   </form>
</body>
</html>