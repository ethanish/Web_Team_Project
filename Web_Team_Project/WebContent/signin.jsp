<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="font.css" rel="stylesheet">
<script>
	function checkValue(){
		var form = document.userInfo;
		if(!form.id.value){
            alert("���̵� �Է��ϼ���.");
            return false;
        }
        if(!form.password.value){
            alert("��й�ȣ�� �Է��ϼ���.");
            return false;
        }
	}
</script>
<link href="font.css" rel="stylesheet">
</head>	
<body>
	<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
	<h2>ȸ������</h2>
	
	<h4>������ �Է��� �ּ���</h4>
	
	<form name = "userInfo" action="signin_process.jsp" method="POST" onsubmit="return checkValue()">
		<table>
			<tr>
				<td>���̵�(�ʼ�) :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>��й�ȣ(�ʼ�) :</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ :</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>�̸� :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>������� :</td>
				<td><input type="date" value="2020-07-02" name="birth_d"></td>
			</tr>
		</table>
		<input type="reset" name="Reset" />
		<input type="submit" name="Submit" />
	</form>
	
	<button type="button" class="nabyBtn"
		onClick="location.href='selectPage.jsp'">���� ������</button>
</body>
</html>