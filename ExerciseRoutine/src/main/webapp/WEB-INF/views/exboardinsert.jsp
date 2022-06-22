<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
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
 width: 100%;
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
</style>
<title>exboard</title>
</head>
<body>
   <form class="form-container" action="/exboard/insert" method="post">
      <table class="board">
         <tr>
            <th>WRITER</th>
            <td><input type="text" name="username"></td>
         </tr>
         <tr>
            <th>TITLE</th>
            <td><input type="text" name="title"></td>
         </tr>
         <tr>
            <th>CONTENT</th>
            <td><textarea rows="10" cols="60" name="content"></textarea></td>
         </tr>
         <tr>
            <td colspan="2" align="right">
               <input type="submit" value="완료">
               <input type="button" value="취소" onclick="location.href='/exboard/list'">
            <td>
         </tr>
      </table>
   </form> 
   
<textarea class="form-control" rows="3"></textarea>
</body>
</html>