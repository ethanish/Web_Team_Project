<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href = "style.css">
</head>
<body>
	<%
		String id = (String)session.getAttribute("uID");
	%>
	<h1 style="font-family: impact; position: fixed; left: 0px; top: 0px;">
		<span class="mainlink" onclick="location.href='main.jsp'"> gotomain </span>
	</h1>
	<div style="float:right;">	
		<span id="signin"></span>	
		<span id="login"></span>
		<span id="logout"></span>
	</div>
	
	<script>
		var uid = '<%=id%>';
		if(uid == "null"){
			var $signin = document.getElementById("signin");
			$signin.innerHTML = "<button type='button' class='nabyBtn' onClick='location.href=\"signin.jsp\"'>회원가입</button>";
			var $login = document.getElementById("login");
			$login.innerHTML = "<button type='button' class='nabyBtn' onClick='location.href=\"login.jsp\"'>로그인</button>";
		
		}else{
			var $login = document.getElementById("login");
			$login.innerHTML = uid+" 님 환영합니다.";
			var $logout = document.getElementById("logout");
			$logout.innerHTML = "<button type='button' class='nabyBtn' onClick='location.href=\"logout_process.jsp\"'>로그아웃</button>";	
		}
	</script>
	</br></br>
	<h2>head2</h2>
	
</body>
</html>