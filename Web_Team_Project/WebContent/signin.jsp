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
            alert("���̵� �Է��ϼ���.");
            return false;
        }
        if(!form.password.value){
            alert("��й�ȣ�� �Է��ϼ���.");
            return false;
        }
	}
</script>
</head>	
<body>
	<h1 style="font-family: impact;">
		<span class="mainlink" onclick="location.href='main.html'"> gotomain </span>
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
		onClick="location.href='main.html'">���� ������</button>
</body>
</html>