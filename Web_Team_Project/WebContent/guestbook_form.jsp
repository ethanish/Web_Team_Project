<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
	errorPage="guestbook_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����:�ۼ�ȭ��</title>
</head>
<body>
	<center>
		<h2>����:�ۼ�ȭ��</h2>
		<hr>
		[<a href=guestbook_control.jsp?action=list>�Խù��������</a>]
		<form name=form1 method=post action=guestbook_control.jsp>
			<input type=hidden name="action" value="insert">
			<table cellpadding=5 cellspacing=0 border="1">
				<tr>
					<td bgcolor="#99CCFF">����</td>
					<td><input type="text" name="gb_title" size="20"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="5" name="gb_contents" cols="40"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type=submit value="����"><input type=reset value="���"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>