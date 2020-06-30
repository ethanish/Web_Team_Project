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

		result_main();

		function result_main() {
			var temp;
			var maxNum = Numarr[0];
			var resultArr = new Array();
			var resultNum = 0;

			for (var i = 0; i < Numarr.length; i++) {
				if (maxNum < Numarr[i])
					maxNum = Numarr[i];
			}
			
			var minNum = Numarr[0];
			
			for (var i = 0; i < Numarr.length; i++) {
				if (minNum > Numarr[i])
					minNum = Numarr[i];
			}

			document.write("<div style='line-height: 7em; font-family: fireF; font-size: 35px; text-align: center; color:#58ACFA;'>당신이 뽑은 여행지는?</div><div style='text-align: center;'>");
			
			if(Numarr[0] == 1){
				resultNum += 0;
			}else{
				resultNum += 16;
			}
			
			if(Numarr[1] == 1){
				resultNum += 0;
			}else{
				resultNum += 8;
			}
			
			if(Numarr[2] == 1){
				resultNum += 0;
			}else{
				resultNum += 4;
			}
			
			if(Numarr[3] == 1){
				resultNum += 0;
			}else{
				resultNum += 2;
			}
			
			if(Numarr[4] == 1){
				resultNum += 0;
			}else{
				resultNum += 1;
			}
			
			for(var i= 0; i<32;i++){
				if(resultNum == i){
					document.write("<div id='dogname'>여행지이름 </div>");
					document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Pomeranian.png' width='256' height='170' />");
					document.write("<div id='info'> <br><br>-------------------------------------<br><br><br><br><br></div>");
				}
			}
			
				
			
			
			document.write("</div>");
		}
	</script>
</body>
</html>