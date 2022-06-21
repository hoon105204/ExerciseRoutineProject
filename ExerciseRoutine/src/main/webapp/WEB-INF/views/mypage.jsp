<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table{
	margin-left:auto;
	margin-right:auto;
}

</style>
<body bgcolor="skyblue">
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
	
</head>
<body>
<div>
<h1>마이페이지</h1>
</div>
      	<form  action="/mypage/update" method="post" >
      		
      		<table>
      		<tr>
	      		<th>ID</th>
	      		<td><input type="text" name="userid" value="${dto.userid }" ></td>
      		</tr>
      		<tr>
	      		<th>이름</th>
	      		<td><input type="text" name="name" value="${dto.name }"></td>
	      	</tr>	
      		<tr>
	      		<th>생년월일</th>
	      		<td><input type="date" name="birth" value="${dto.birth }"></td>
	      	</tr>
	      	<tr>
	      		<th>성별</th>
	      		<td>
	      			<select>
	      			<option value="M">남성</option>
	      			<option value="F">여성</option>
	      			</select>
	      		</td>
	      	</tr>
	      	<tr>
	      		<th>키</th>
	      		<td><input type="text" name="height" value="${dto.height }"></td>
	      	</tr>
	      	<tr>
	      		<th>몸무게</th>
	      		<td><input type="text" name="weight" value="${dto.weight }"></td>
	      	</tr>
	      	<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정완료">
					<input type="button" value="취소" onclick="location.href='/mypage/home'">
				</td>
			</tr>
		</table>	
      </form>
      
      
<div id="curve_chart" style="width: 900px; height: 500px"></div>
        
        
<form action="insert" method="post">       
	 	<Table>
	      <tr>
		      	<th>몸무게</th>
		      	<td><input type="text" id="weight" value="${dto.weight }"></td>
		  </tr>
		  <tr>
			 <td colspan="2" align="right">
				<input type="submit" value="몸무게 수정">
			 </td>
			</tr>
		</Table> 
</form>     

</body>
</html>