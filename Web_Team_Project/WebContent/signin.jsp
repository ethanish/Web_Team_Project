<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function checkValue(){
		var form = document.userInfo;
		if(!form.id.value){
            alert("아이디를 입력하세요.");
            return false;
        }
        if(!form.password.value){
            alert("비밀번호를 입력하세요.");
            return false;
        }
	}
</script>
</head>	
<body>
	<h1 style="font-family: impact;">
		<span class="mainlink" onclick="location.href='main.html'"> gotomain </span>
	</h1>
	<h2>회원가입</h2>
	
	<h4>정보를 입력해 주세요</h4>
	
	<form name = "userInfo" action="signin_process.jsp" method="POST" onsubmit="return checkValue()">
		<table>
			<tr>
				<td>아이디(필수) :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호(필수) :</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>전화번호 :</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>이름 :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>생년월일 :</td>
				<td><input type="date" value="2020-07-02" name="birth_d"></td>
			</tr>
		</table>
		<input type="reset" name="Reset" />
		<input type="submit" name="Submit" />
	</form>
	
	<button type="button" class="nabyBtn"
		onClick="location.href='main.html'">메인 페이지</button>
</body>
</html>