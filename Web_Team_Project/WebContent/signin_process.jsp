<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import = "java.text.*, java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<% 
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	
	String sql = "insert into account(id,password,tel,name,birth_d) values(?,?,?,?,?)";
	int rs=0;
	
	try {

		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("id"));
		pstmt.setString(2, request.getParameter("password"));
		pstmt.setString(3, request.getParameter("tel"));
		pstmt.setString(4, request.getParameter("name"));
		pstmt.setString(5, request.getParameter("birth_d"));
		rs = pstmt.executeUpdate();
		System.out.println("Account 테이블  삽입이 성공했습니다.");
	} catch (SQLException ex) {
		System.out.println("Account 테이블 삽입이 실패했습니다.");
		System.out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null){
			pstmt.close();	
		}
		if (conn != null){
			conn.close();	
		}
	}
%>
<script type="text/javascript">
if(<%=rs%> > 0){
	alert("아이디 생성 완료");
	location.href="selectPage.jsp";
}else{
	alert("아이디가 중복됩니다");
	history.go(-1);
}
</script>