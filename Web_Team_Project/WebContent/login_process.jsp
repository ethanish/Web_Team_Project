<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import = "java.text.*, java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	String check_pwd = null;
	ResultSet rs = null;
	int uNum = -1;
	
	try {
		String sql = "Select num, password from account where id = ?";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			uNum = rs.getInt(1);
			check_pwd = rs.getString(2);
		}
	}catch (SQLException ex) {
		System.out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
		if (conn != null){
			conn.close();	
		}
	}
	
	if (check_pwd != null && check_pwd.equals(pwd)) {
		System.out.println("로그인 성공! 유저 넘버 : "+uNum+", 유저 아이디 : "+id);
		session.setAttribute("uID",id);
		session.setAttribute("uNum",uNum);
	}else{
		id = null;
		uNum = -1;
		session.setAttribute("uID",id);
		session.setAttribute("uNum",uNum);
	}
%>
<script type="text/javascript">
if(<%=uNum%> > -1 ){
	alert("로그인에 성공했습니다");
	location.href='main.jsp';
}else{
	alert("회원정보를 확인해주세요");
	location.href='login.jsp';
}
</script>