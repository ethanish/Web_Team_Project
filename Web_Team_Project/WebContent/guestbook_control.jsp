<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
	errorPage="guestbook_error.jsp" import="guestbook.*"%>
	
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<meta http-equiv="Content-TypeString" content="text/html; charset=EUC-KR">
</head>
<body>
	<jsp:useBean id="gb" class="guestbook.GuestBean"/>
	<jsp:useBean id="guestbook" class="guestbook.GuestBook"/>
	<jsp:setProperty name="guestbook" property="*"/>
	<%
		String action = request.getParameter("action");
		if(action.equals("list"))
		{
			response.sendRedirect("guestbook_list.jsp");
		}
		else if(action.equals("insert"))
		{
			if(gb.insertDB(guestbook))
			{
				response.sendRedirect("guestbook_list.jsp");
			}
			else
				throw new Exception("DB 입력오류");
		}
		else if(action.equals("update"))
		{
			if(gb.updateDB(guestbook))
			{
				response.sendRedirect("guestbook_list.jsp");
			}
			else
				throw new Exception("DB 갱신오류");
		}
		else
		{
			out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
		}
	%>
</body>
</html>