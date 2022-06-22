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
			const a = Date.parse('${weightdate[1].memberdate}');
			const ab = Date.parse('${weightdate[2].memberdate}');
			console.log(a);
		  var data = google.visualization.arrayToDataTable([
			['Date', 'weight'],
	        ['${weightlist[1].memberdate}', ${weightlist[1].weight}],
			['${weightlist[1].memberdate}', ${weightlist[2].weight}],
			['${weightlist[3].memberdate}', ${weightlist[3].weight}],
			['${weightlist[1].memberdate}', ${weightlist[0].weight}]
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
<div>
	print();
</div>
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

	<div id="footer">
		<table>
			<tr>
				<td colspan="5" align="center">
				<input type="button" value="홈" onclick="location.href=''">
				<input type="button" value="캘린더" onclick="location.href=''">
				<input type="button" value="라이브러리" onclick="location.href='/exlist/listhome'">
				<input type="button" value="게시판" onclick="location.href=''">
				<input type="button" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>