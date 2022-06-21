<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("button:eq(1)").click(function(){
			$(".��ü").show();
			$(".����").hide();
			$(".��").hide();
			$(".��").hide();
		});
		$("button:eq(2)").click(function(){
			$(".��ü").hide();
			$(".����").show();
			$(".��").hide();
			$(".��").hide();
		});
		$("button:eq(3)").click(function(){
			$(".��ü").hide();
			$(".����").hide();
			$(".��").show();
			$(".��").hide();
		});
		$("button:eq(4)").click(function(){
			$(".��ü").hide();
			$(".����").hide();
			$(".��").hide();
			$(".��").show();
		});
		$("button:eq(5)").click(function(){
			$(".��ü").show();
			$(".����").show();
			$(".��").show();
			$(".��").show();
		});
		
		
		$("button:eq(0)").click(function(){
			let filter = $("input[name=filter]").val();
			$("#showlist tr[name*="+filter+"]").show();
			$("#showlist tr").not("[name*="+filter+"]").hide();
		});
		
	});

	

</script>
<style>
#footer{
	position: fixed;
	bottom: 0px;
}
</style>
</head>
<body bgcolor="skyblue">
	<h1>exlist home</h1>
	<div>
		<input type="text" name="filter">
		<button type="submit">�˻�</button>
		<div>
			<button name="��ü">��ü</button>
			<button name="����">����</button>
			<button name="��">��</button>
			<button name="��">��</button>
			<button name="��ü">��ü</button>
		</div>
	</div>
	<div>
		<table border="1">
			<thead>
				<th>� �̸�</th>
				<th>�з�</th>
			</thead>
			<tbody id="showlist">
				<c:forEach items="${list}" var="dto">
					<tr class="${dto.lipart}" name="${dto.liname}">
						<td>${dto.liname}</td>
						<td>${dto.lipart}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div id="footer">
		<table>
			<tr>
				<td colspan="5" align="center">
				<input type="button" value="Ȩ" onclick="location.href=''">
				<input type="button" value="Ķ����" onclick="location.href=''">
				<input type="button" value="���̺귯��" onclick="location.href='/exlist/listhome'">
				<input type="button" value="�Խ���" onclick="location.href=''">
				<input type="button" value="����������" onclick="location.href=''">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>