<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>당신이 뽑은 여행지는?</title>
<link href="font.css" rel="stylesheet">
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
	<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
	<%@ include file="dbconn.jsp" %>
	<%	
		Statement stmt = conn.createStatement();
		String number = request.getParameter("tname");
		String sql = "SELECT * FROM tinfo where num="+number;
		ResultSet rs = stmt.executeQuery(sql);
		String tname=new String();
		String desc=new String();
		String loca=new String();
		int num=0;

		while(rs.next()){
			tname=rs.getString("name");
			desc=rs.getString("description");
			loca=rs.getString("location");
			num=rs.getInt("num");
		}
		conn.close();
	%>
	<script>

			document.write("<div style='line-height: 7em; font-family: fireF; font-size: 35px; text-align: center; color:#F33131;'>당신이 뽑은 여행지는?</div><div style='text-align: center;'>");
			
			var name = "<%=tname%>";
			document.write("<div id='dogname'>"+name +"</div>");
			var loca = "<%=loca%>";
			document.write("<div id='info'> <"+ loca +"></div>");
			var num = <%=num%>;
			document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='img/"+num+".jpg' width='256' height='170' />");
			var desc = "<%=desc%>";
			document.write("<div id='info'> <br><br>"+desc+"</div>");
				
			
			
			document.write("</div>");
		
	</script>
</body>
</html>