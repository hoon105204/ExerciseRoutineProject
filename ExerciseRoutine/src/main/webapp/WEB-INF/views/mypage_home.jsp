<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
			
			/*console.log(${item.memberdate});
		 	 //var data = google.visualization.DataTable([
			/*data.addColumn('weight','체중');
			data.addRow('memberdate','날짜');*/
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
			console.log(table_data);
			
			var data = new google.visualization.arrayToDataTable([
			//data.addColumn('date', 'memberdate')
			//data.addColumn('number', 'weight')
			['Date', 'weight'],
			<c:forEach items="${weightlist}" var="item">['${item.memberdate}',  ${item.weight}],
			</c:forEach>
			
			/*['${weightlist[0].memberdate}',${weightlist[0].weight}],
	       	['${weightlist[1].memberdate}',${weightlist[1].weight}],
			['${weightlist[2].memberdate}',${weightlist[2].weight}],
			['${weightlist[3].memberdate}',${weightlist[3].weight}]*/
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

<form action="insert.do" method="post"> 
	<input type="hidden" name="userid" value="${userinfo.userid }">  
 	<table>
      <tr>
	      	<th>몸무게</th>
	      	<td><input type="text" name="weight" value="${userinfo.weight }"></td>
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