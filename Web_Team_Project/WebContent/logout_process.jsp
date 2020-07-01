<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import = "java.text.*, java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	session.invalidate();
%>
<script type="text/javascript">
	location.href='main.jsp';
</script>