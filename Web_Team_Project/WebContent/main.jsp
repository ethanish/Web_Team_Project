<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function session_remove(){
		<%session.invalidate();%>
	}
</script>
</head>
<body>
	<h1 style="font-family: impact;">
		<span class="mainlink" onclick="location.href='main.jsp'"> gotomain </span>
	</h1>
	<button type="button" class="nabyBtn" onClick="location.href='signin.jsp'">회원가입</button>
	<button type='button' class='nabyBtn' onClick='location.href="login.jsp"'>로그인</button>	
	
</body>
</html>