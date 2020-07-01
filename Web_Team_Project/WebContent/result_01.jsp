<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*, java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>당신과 성향이 맞는 여행지는?</title>
<link href="font.css" rel="stylesheet">
<style>
#dogname{
line-height:5em; 
font-family: photoF3;
 font-size: 25px;
}

#info{
	width : 30%; 
	margin-left:auto;
	margin-right:auto;
	line-height : 2em;
	font-family:photoF1;
	font-size:15px;
}

</style>
</head>
<%@ include file="dbconn.jsp" %>
<body>
	<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
	<script>
	<!-- NumQ1 : 시끄러운 곳, 조용한 곳 / NumQ2 : 물, 물X / NumQ3 : 친구, 커플 / NumQ4 : 친화성 지수 / NumNeur : 신경성 지수-->
		var NumQ1 = 0, NumQ2 = 0, NumQ3 = 0, NumQ4 = 0, NumQ5 = 0;

		NumQ1 =
	<%=request.getParameter("1_Q1")%> + <%=request.getParameter("1_Q2")%> + <%=request.getParameter("1_Q3")%>;
	
		NumQ2 =
	<%=request.getParameter("2_Q1")%> + <%=request.getParameter("2_Q2")%> + <%=request.getParameter("2_Q3")%>;
	
		NumQ3 =
	<%=request.getParameter("3_Q1")%> + <%=request.getParameter("3_Q2")%> + <%=request.getParameter("3_Q3")%>;
	
		NumQ4 =
	<%=request.getParameter("4_Q1")%> + <%=request.getParameter("4_Q2")%> + <%=request.getParameter("4_Q3")%>;
	
		NumQ5 =
	<%=request.getParameter("5_Q1")%> + <%=request.getParameter("5_Q2")%> + <%=request.getParameter("5_Q3")%>;
	
		//document.write(NumOpenness + " 0 " + NumSincerity + " 0 " + NumExtra+" 0 " + NumAgree+" 0 " + NumNeur);
	if(NumQ1 >= 2){
		NumQ1 = 1;
	}else{
		NumQ1 = 0;
	}
	
	if(NumQ2 >= 2){
		NumQ2 = 1;
	}else{
		NumQ2 = 0;
	}
	
	if(NumQ3 >= 2){
		NumQ3 = 1;
	}else{
		NumQ3 = 0;
	}
	
	if(NumQ4 >= 2){
		NumQ4 = 1;
	}else{
		NumQ4 = 0;
	}
	
	if(NumQ5 >= 2){
		NumQ5 = 1;
	}else{
		NumQ5 = 0;
	}
	
		var Numarr = [ NumQ1, NumQ2, NumQ3, NumQ4, NumQ5 ];
		
		
		<%
		int NumQ1 = Integer.parseInt(request.getParameter("1_Q1")) + Integer.parseInt(request.getParameter("1_Q2")) + Integer.parseInt(request.getParameter("1_Q3"));
		int NumQ2 = Integer.parseInt(request.getParameter("2_Q1")) + Integer.parseInt(request.getParameter("2_Q2")) + Integer.parseInt(request.getParameter("2_Q3"));
		int NumQ3 = Integer.parseInt(request.getParameter("3_Q1")) + Integer.parseInt(request.getParameter("3_Q2")) + Integer.parseInt(request.getParameter("3_Q3"));
		int NumQ4 = Integer.parseInt(request.getParameter("4_Q1")) + Integer.parseInt(request.getParameter("4_Q2")) + Integer.parseInt(request.getParameter("4_Q3"));
		int NumQ5 = Integer.parseInt(request.getParameter("5_Q1")) + Integer.parseInt(request.getParameter("5_Q2")) + Integer.parseInt(request.getParameter("5_Q3"));
		
		int resultNum=0;
		
		String index;
		
		if(NumQ1 >= 2){
			NumQ1 = 1;
		}else{
			NumQ1 = 0;
		}
		
		if(NumQ2 >= 2){
			NumQ2 = 1;
		}else{
			NumQ2 = 0;
		}
		
		if(NumQ3 >= 2){
			NumQ3 = 1;
		}else{
			NumQ3 = 0;
		}
		
		if(NumQ4 >= 2){
			NumQ4 = 1;
		}else{
			NumQ4 = 0;
		}
		
		if(NumQ5 >= 2){
			NumQ5 = 1;
		}else{
			NumQ5 = 0;
		}
		
		if(NumQ1 == 1){
			resultNum += 0;
		}else{
			resultNum += 16;
		}
		
		if(NumQ2 == 1){
			resultNum += 0;
		}else{
			resultNum += 8;
		}
		
		if(NumQ3 == 1){
			resultNum += 0;
		}else{
			resultNum += 4;
		}
		
		if(NumQ4 == 1){
			resultNum += 0;
		}else{
			resultNum += 2;
		}
		
		if(NumQ5 == 1){
			resultNum += 0;
		}else{
			resultNum += 1;
		}
		
		index = Integer.toString(resultNum);
		System.out.println(index);
		Statement stmt = null;
		ResultSet rs = null;
		
		String temp = null;
		String temp2 = null;
		String temp3 = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select name, description, location from tinfo where num = " + index);
			
		%>	
		
		
		<%while(rs.next()){
			
			temp = rs.getString(1);
			temp2 = rs.getString(2);
			temp3 = rs.getString(3);
			
			System.out.println(temp);
			System.out.println(temp2);
			System.out.println(temp3);
			
		}
		} catch (SQLException ex) {
			System.out.println("fail");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (conn != null)
				conn.close();
		}
	%>
		
		
		
		
		
		
		
		

		function result_main() {

			document.write("<div style='line-height: 3em; font-family: fireF; font-size: 35px; text-align: center; color:#58ACFA;'>당신과 성향이 맞는 여행지는?</div><div style='text-align: center;'>");
			
			var name = '<%=temp%>';
			document.write("<div id='dogname'>"+name+" </div>");
			var location = '<%=temp3%>';
			document.write("<div id='info'> <"+ location +"></div>");
			var resultn = '<%=index%>';
			document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='img/"+resultn+".jpg' width='256' height='170' />");
			var description = '<%=temp2%>';
			document.write("<div id='info'> <br><br>"+description+"<br><br><button onClick='location.href=\"guestbook_form.jsp\"'>방명록쓰기</button><br><br></div>");
			
			
			document.write("</div>");
			
			
			
			
		}
		result_main();
	</script>
	
	
</body>
</html>