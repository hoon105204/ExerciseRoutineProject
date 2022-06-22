<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
</head>
<body>
	<div id='calendar'></div>	
</body>
    <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          height: '650px',
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
          locale: 'ko'          
        });
        calendar.render();
      });
    </script>
</html>