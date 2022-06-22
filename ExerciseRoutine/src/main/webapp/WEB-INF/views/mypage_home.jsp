<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<title>My Page-home</title>
</head>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);
	
	function drawChart() {
		
			var weightlist = '${weightlist}';
			console.log(weightlist);
			var weightlist0 = weightlist.split(',');
			console.log(weightlist0);
			
			var table_data = [];
			for(let value of weightlist0){
				<c:forEach items="${weightlist}" var="item">
			    	table_data.push(["${item.memberdate}",  "${item.weight}"])
			    </c:forEach>
			};
			var data = new google.visualization.arrayToDataTable([
			['Date', 'weight'],
			<c:forEach items="${weightlist}" var="item">['${item.memberdate}',  ${item.weight}],
			</c:forEach>
	     	]);
	
	      var options = {
	        title: '체중 변화 그래프',
	        legend: { position: 'bottom' }
	      };
	
	      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
	
	      chart.draw(data, options);
	    }
</script>

<style>
table{
	margin-left:auto;
	margin-right:auto;
	align: center;
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
div{
text-align: center;
}
.col-sm-6{
	margin-left:auto;
	margin-right:auto;
	text-align: center;
}
#form{
	align : center;
}
h1{
	text-align: center
}
</style>


<body class="p-3 mb-2 bg-light text-dark">
	<h1>MyPage</h1>
	<div id="form">
	<div class="col-sm-6">
     	<table class="table">
      		<tr>
	      		<th scope="col">ID</th>
	      		<td scope="row">${userinfo.userid }</td>
      		</tr>
      		<tr>
	      		<th>이름</th>
	      		<td>${userinfo.username }</td>
	      	</tr>	
      		<tr>
	      		<th>생년월일</th>
	      		<td>${userinfo.birth }</td>
	      	</tr>
	      	<tr>
	      		<th>성별</th>
	      		<td>${userinfo.gender }</td>
	      	</tr>
	      	<tr>
	      		<th>키</th>
	      		<td>${userinfo.height }</td>
	      	</tr>
	      	<tr>
	      		<th>몸무게</th>
	      		<td>${userinfo.weight }</td>
	      	</tr>
	      	<tr>
				<td colspan="2" align="center">
					<input class="btn btn-outline-primary" type="button" value="수정하기" onclick="location.href='/mypage/updateform'">
				</td>
			</tr>
		</table>	
		</div>
</div>	

<div id="curve_chart" style="width: 1000px; height: 450px"></div>

<form action="insert.do" method="post"> 
	<input type="hidden" name="userid" value="${userinfo.userid }">  
 	<table>
      <tr>
	      	<th>몸무게</th>
	      	<td><input class="form-control" type="text" name="weight" value="${userinfo.weight }"></td>
	  </tr>
	  <tr>
		 <td colspan="2" align="center">
			<input class="btn btn-outline-primary" type="submit" value="몸무게 기록 갱신">
		 </td>
		</tr>
	</table> 
</form> 

	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href='/exuser/exuserhome'">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리"onclick="location.href='/exlist/listhome'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>

</body>
</html>