<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link href='${pageContext.request.contextPath }/resources/fullcalendar/main.css' rel='stylesheet' />
    <script src='${pageContest.request.contextPath }/resources/fullcalendar/main.js'></script>
<style>
h2{
  color: var(--bs-blue);
}
input {
	backgroundcolor : blue;
}
#but{
	position: relative;
	text-align: center;
	width: 100%;
	margin-top: 20px
}
</style>
</head>
<body>
	<div id='calendar'></div><br>
	<div id="but">
		<span>
			<input class="btn btn-primary" type="button" id="button1" value="홈" onclick="location.href='/sign/home'">
			<input class="btn btn-primary" type="button" id="button1" value="캘린더" onclick="location.href='/calendar/calendarhome'">
			<input class="btn btn-primary" type="button" id="button1" value="라이브러리" onclick="location.href='/exlistlibrary/list'">
			<input class="btn btn-primary" type="button" id="button1" value="게시판" onclick="location.href='/exboard/list'">
			<input class="btn btn-primary" type="button" id="button1" value="마이페이지" onclick="location.href='/mypage/mypagehome'">
		</span>
	</div>
</body>
    <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          height: '600px',
          expandRows: true,
          headerToolbar: {
        	left: 'dayGridMonth,prev',
        	center: 'title',
        	right: 'today,next'
          },         
          navLinks: true,
          editable: true,
          selectable: true,
          nowIndicator: true,
          dayMaxEvents: true,
          locale: 'ko'  ,
          eventAdd: function(obj){
        	  console.log(obj);
          },
          eventChange: function(obj){
        	  console.log(obj);
          },
          eventRemove: function(obj){
        	  console.log(obj);
          },
          select: function(arg){
        	 var title = confirm('해당 날짜의 운동 계획 생성 하시나요?');
        	 if(title){
        		 location.href='/exuser/exuserhome';
        	 }
          }
        });
        calendar.render();
      });
    </script>
</html>