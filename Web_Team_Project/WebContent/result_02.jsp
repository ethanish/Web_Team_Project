<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>당신이 뽑은 여행지는?</title>
<style>
@font-face {
	font-family: 'photoF';
	src: url(PhotoFont.ttf);
}

@font-face {
	font-family: 'photoF3';
	src: url(photoFont3.ttf);
}

@font-face {
	font-family: 'photoF1';
	src: url(photoFont1.ttf);
}

@font-face {
	font-family: 'rocatF';
	src: url(rocatFont.ttf);
}

@font-face {
	font-family: 'fireF';
	src: url(fireFont.ttf);
}

@font-face {
	font-family: 'photoF2';
	src: url(photoFont2.ttf);
}

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
<body>
	<%@ include file="dbconn.jsp" %>
	<%	
		Statement stmt = conn.createStatement();
		String name = request.getParameter("tname");
		String sql = "SELECT * FROM tinfo where name='"+name+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String tname=rs.getString("name");
			String desc=rs.getString("description");
			String loca=rs.getString("location");
			int num=rs.getInt("num");
		}
		
		conn.close();
	%>
	<script>
			var name = '<%=tname%>';
			var desc = '<%=desc%>';
			var loca = '<%=loca%>';
			var num = <%=num%>;
			document.write("<div style='line-height: 7em; font-family: fireF; font-size: 35px; text-align: center; color:#58ACFA;'>당신이 뽑은 여행지는?</div><div style='text-align: center;'>");
			
			
			for(var i= 0; i<32;i++){
				if(resultNum == i){
					document.write("<div id='dogname'>"+name +"</div>");
					document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src=img/'"+num+".jpg' width='256' height='170' />");
					document.write("<div id='info'> <br><br>-------------------------------------<br><br><br><br><br></div>");
				}
			}
			
				
			
			
			document.write("</div>");
		}
	</script>
</body>
</html>