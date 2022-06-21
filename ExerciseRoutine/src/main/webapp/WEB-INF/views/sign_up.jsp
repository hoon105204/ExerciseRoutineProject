<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	margin: auto;
}

h1 {
	text-align: center;
}

.id_ok {
	color: #fff;
	display: none;
}

.id_already {
	color: #6A82FB;
	display: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    function checkId(){
        var id = $("#id").val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:"/sign/idCheck", //Controller에서 인식할 주소
            type:"post", //POST 방식으로 전달
            data:{"id":id},
            success:function(cnt){
            	if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $(".id_ok").css("display","inline-block"); 
                    $(".id_already").css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $(".id_already").css("display","inline-block");
                    $(".id_ok").css("display", "none");
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
    };
</script>
<body bgcolor="skyblue">
	<h1>회원가입</h1>
	<form action="/sign/insert" method="post">
		<table>
			<tr>
				<th>I D</th>
				<td><input type="text" id="id" name="userid" required
					oninput="checkId()"></td>
				<td><span class="id_ok">사용 가능한 아이디입니다.</span>
				<span class="id_already">누군가 이 아이디를 사용하고 있어요.</span></td>
			</tr>
			<tr>
				<th>P W</th>
				<td><input type="password" name="userpw"></td>
			</tr>
			<tr>
				<th>이 름</th>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>남<input type="radio" name="gender" value="M"> 여<input
					type="radio" name="gender" value="F"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="birth"></td>
			</tr>
			<tr>
				<th>키</th>
				<td><input type="number" name="height" min="100" max="300"
					step="0.1"></td>
			</tr>
			<tr>
				<th>몸무게</th>
				<td><input type="number" name="weight" min="20" max="300"
					step="0.1"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit"value="가입하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>