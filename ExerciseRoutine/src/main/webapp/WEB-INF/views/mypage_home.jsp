<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);
	
	
	function drawChart() {
	
		  var data = google.visualization.arrayToDataTable([
	        ['Date', 'weight'],
	        ['2004-05-31',  85],
	        ['2005',  90],
	        ['2006',  70],
	        ['2007',  75]
	      ]);
	
	      var options = {
	        title: '체중 변화',
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
}
</style>

<body bgcolor="skyblue">
	<h1>MyPage</h1>
	<h2>${weightlist[1].weight}</h2>
	<h2>${weightlist[1].memberdate}</h2>
	
<div>
     	<table>
      		<tr>
	      		<th>ID</th>
	      		<td>${userinfo.userid }</td>
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
				<td colspan="2" align="right">
					<input type="button" value="수정하기" onclick="location.href='/mypage/updateform'">
				</td>
			</tr>
		</table>	
</div>	

<div id="curve_chart" style="width: 900px; height: 500px"></div>

<form action="insert" method="post">       
 	<table>
      <tr>
	      	<th>몸무게</th>
	      	<td><input type="text" id="weight" value="${userinfo.weight }"></td>
	  </tr>
	  <tr>
		 <td colspan="2" align="right">
			<input type="submit" value="몸무게 수정">
		 </td>
		</tr>
	</table> 
</form> 


</body>
</html>