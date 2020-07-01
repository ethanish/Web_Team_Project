<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" 
	errorPage="guestbook_error.jsp" import="java.util.*"%>
<%@ page import = "guestbook.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=EUC-KR">
<title>방명록 : 목록화면</title>
</head>
	<%
		GuestBean gb = new GuestBean();
		ArrayList datas = gb.getDBList();
	%>
<body>
	<center>
		<h2>방명록:목록화면</h2>
		<hr>
		<form>
			<a href="guestbook_form.jsp">방명록 쓰기</a><p>
			<table cellpadding=5 cellspacing=0 border="1">
				<tr bgcolor="#99CCFF">
					<td>번호</td>
					<td>작성일</td>
					<td>제목</td>
					<td>내용</td>
				</tr>
				<%
					for(int i=0; i<datas.size(); i++)
					{
						GuestBook guestbook = (GuestBook)(datas.get(i));
				%>
				<tr>
					<td><%=guestbook.getGb_id() %></td>
					<td><%=guestbook.getGb_date() %></td>
					<td><%=guestbook.getGb_title() %></td>
					<td><%=guestbook.getGb_contents() %></a></td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
		<hr>
	</center>
</body>
</html>