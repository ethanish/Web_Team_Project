<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ��õ ����Ʈ</title>
<link href="font.css" rel="stylesheet">
<style type="text/css">
.button1 {
	width: 100px;
	background-color: #F33131;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}

.button2 {
	width: 100px;
	background-color: #58ACFA;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}

.buttona {
	width: 100px;
	background-color: #58ACFA;
	border: none;
	color: #fff;
	padding: 10px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}


</style>

</head>
<body>
	<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
	<%
		String id = (String)session.getAttribute("uID");
	%>
	
	<div style="width : 50%;float:left;">
	
		<div style="text-align: center;">
				<img src='airplane.png' width='241' height='244' style="z-index:1;" />
			</div>
			<div style="font-family: fireF; font-size: 50px; text-align: center;color:#F33131;;">
				����� <br> ���� <br> ���� <br>��������?
			</div>
		<br><br>
		
			<div style="text-align: center; z-index:3;">
				<button class="button1" type="button"
					onclick="location.href='worldcup.jsp'" style="font-family: photoF; z-index:3; ">������ �̻��� ������
					START</button>
			</div>
		</div>
		
	
	<div style="width : 50%; float:right;">
		<div style="text-align: center;">
			<img src='airplaneR.png' width='241' height='244' />
		</div>
		<div style="font-family: fireF; font-size: 50px; text-align: center; color:#58ACFA;">
			��Ű� <br> ������ <br> �´� <br>��������?
		</div>
	<br><br>
		<div style="text-align: center;">
			<button class="button2" type="button"
				onclick="location.href='Question.html'" style="font-family: photoF">������    ������   �׽�Ʈ START</button>
		</div>
	</div>
	
	<div style="font-family: photoF;text-align: center;position:fixed; margin:0 auto; right : 20px; top: 10px; width:100px;height:50px;background-color:white;">
		<div>	
		<span id="signin"></span>	
		<span id="login"></span>
		<span id="logout"></span>
		</div>
		<script>
			var uid = '<%=id%>';
			if(uid == "null"){
				var $signin = document.getElementById("signin");
				$signin.innerHTML = "<button class=\"buttona\" type='button' class='nabyBtn' style=\"font-family: photoF\" onClick='location.href=\"signin.jsp\"'>ȸ������</button>";
				var $login = document.getElementById("login");
				$login.innerHTML = "<button class=\"buttona\" type='button' class='nabyBtn' style=\"font-family: photoF\" onClick='location.href=\"login.jsp\"'>�α���</button>";
			
			}else{
				var $login = document.getElementById("login");
				$login.innerHTML = uid+" �� ȯ���մϴ�.";
				var $logout = document.getElementById("logout");
				$logout.innerHTML = "<button class=\"buttona\" type='button' class='nabyBtn' style=\"font-family: photoF\" onClick='location.href=\"logout_process.jsp\"'>�α׾ƿ�</button>";	
			}
		</script>	
	</div>

</body>
</html>