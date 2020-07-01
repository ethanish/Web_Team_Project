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
		<span class="mainlink" onclick="location.href='main.jsp'"> gotomain </span>
	</h1>
	<h2>로그인</h2>
	
	<div align=center>
		<form action="login_process.jsp" method="POST">
			<table width="250" border="1" align="center" cellspacing="0" cellpadding="5">
				<tr>
					<td colspan="2" align="center">Login</td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" size=10></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" size=10></td>

				</tr>
				<tr>
					<td colspan="2" align="center"><input type=submit
						value="Login"></td>
				</tr>

			</table>
		</form>
	</div>
	
</body>
</html>