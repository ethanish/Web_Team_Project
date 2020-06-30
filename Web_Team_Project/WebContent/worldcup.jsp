<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이상형 월드컵</title>
<link type="text/css" rel="stylesheet" href="start_external.css"></link>
</head>
<body>
<div id = "cont">
		<div class="main">
			<div id = "leftName" class = "cleft"></div>
			<div id = "round" class = "cmiddle">32강 1/16</div>
			<div id = "rightName" class = "cright"></div>
		</div>
		<div class="main">
			<div id = "left" class = "cleft"></div>
			<div id = "divVS" class = "cmiddle"><img src="VS.jpg"></div>
			<div id = "right" class = "cright"></div>
		</div>
		<div class="main">
			<div id = "winner"></div>
		</div>
	</div>
<%@ include file="dbconn.jsp" %>
<%
	Statement stmt = conn.createStatement();
	String sql = "SELECT name FROM Locate";
	
	ResultSet rs = stmt.executeQuery(sql);
	String[] name=new String[32];
	int i=0;
	while(rs.next()){
		name[i]=rs.getString(i);
	}
	
	conn.close();
%>
	<script>
	var image=[];
	var imageSet=[
		{ name : 0, source : '0.jpg'},
		{ name : 1, source : '1.jpg'},
		{ name : 2, source : '2.jpg'},
		{ name : 3, source : '3.jpg'},
		{ name : 4, source : '4.jpg'},
		{ name : 5, source : '5.jpg'},
		{ name : 6, source : '6.jpg'},
		{ name : 7, source : '7.jpg'},
		{ name : 8, source : '8.jpg'},
		{ name : 9, source : '9.jpg'},
		{ name : 10, source : '10.jpg'},
		{ name : 11, source : '11.jpg'},
		{ name : 12, source : '12.jpg'},
		{ name : 13, source : '13.jpg'},
		{ name : 14, source : '14.jpg'},
		{ name : 15, source : '15.jpg'},
		{ name : 16, source : '16.jpg'},
		{ name : 17, source : '17.jpg'},
		{ name : 18, source : '18.jpg'},
		{ name : 19, source : '19.jpg'},
		{ name : 20, source : '20.jpg'},
		{ name : 21, source : '21.jpg'},
		{ name : 22, source : '22.jpg'},
		{ name : 23, source : '23.jpg'},
		{ name : 24, source : '24.jpg'},
		{ name : 25, source : '25.jpg'},
		{ name : 26, source : '26.jpg'},
		{ name : 27, source : '27.jpg'},
		{ name : 28, source : '28.jpg'},
		{ name : 29, source : '29.jpg'},
		{ name : 30, source : '30.jpg'},
		{ name : 31, source : '31.jpg'},
	];
	var sixteen=[];
	var eight=[];
	var four=[];
	var two=[];
	var current = 0;
	var sixteenIndex=0;
	var eightIndex=0;
	var fourIndex=0;
	var randNum=[];

	
	for(var i=0;i<32;i++){
		randNum[i]=Math.floor(Math.random()*32);
		for(var j=0;j<i;j++){
			if(randNum[i]==randNum[j]){
				i--;
				break;
			}
		}
	}
	
	for(var i=0;i<32;i++){
		image[i] = imageSet[randNum[i]];
	}
	
	
	
	var firstL = document.getElementById("left");
	var firstR = document.getElementById("right");
	
	firstL.innerHTML = "<img id='leftimg' onclick='sixteenf()' src='"+image[0].source+"'>";
	firstR.innerHTML = "<img id='rightimg' onclick='sixteen2()' src='"+image[1].source+"'>";
	
	document.getElementById("leftName").innerHTML = image[0].name;
	document.getElementById("rightName").innerHTML = image[1].name;
	
	function sixteenf(){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		if(current == 15){
			sixteen[current] = current*2;
			left.innerHTML = "<img id='leftimg' onclick='next()' src='"+image[sixteen[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='next2()' src='"+image[sixteen[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[sixteen[0]].name;
			document.getElementById("rightName").innerHTML = image[sixteen[1]].name;
			document.getElementById("round").textContent = "16강 1/8";
			return;
		}
		
		
		sixteen[current] = current*2;
		current=current+1;
		
		document.getElementById("round").textContent = "32강 "+(current+1)+"/16";
		
		
		left.innerHTML = "<img id='leftimg' onclick='sixteenf()' src='"+image[current*2].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='sixteen2()' src='"+image[current*2+1].source+"'>";
		
		document.getElementById("leftName").innerHTML = image[current*2].name;
		document.getElementById("rightName").innerHTML = image[current*2+1].name;
	}
	function sixteen2(){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		if(current == 15){
			sixteen[current] = current*2+1;
			left.innerHTML = "<img id='leftimg' onclick='next()' src='"+image[sixteen[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='next2()' src='"+image[sixteen[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[sixteen[0]].name;
			document.getElementById("rightName").innerHTML = image[sixteen[1]].name;
			document.getElementById("round").textContent = "16강 1/8";
			return;
		}
		
		sixteen[current] = current*2+1;
		current=current+1;
		
		document.getElementById("round").textContent = "32강 "+(current+1)+"/16";
		
		left.innerHTML = "<img id='leftimg' onclick='sixteenf()' src='"+image[current*2].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='sixteen2()' src='"+image[current*2+1].source+"'>";
		document.getElementById("leftName").innerHTML = image[current*2].name;
		document.getElementById("rightName").innerHTML = image[current*2+1].name;
	}
	function next(){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		if(sixteenIndex == 7){
			eight[sixteenIndex] = sixteenIndex*2;
			left.innerHTML = "<img id='leftimg' onclick='eightFinal()' src='"+image[eight[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='eightFinal2()' src='"+image[eight[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[eight[0]].name;
			document.getElementById("rightName").innerHTML = image[eight[1]].name;
			document.getElementById("round").textContent = "8강 1/4";
			return;
		}
		
		
		eight[sixteenIndex] = sixteenIndex*2;
		sixteenIndex=sixteenIndex+1;
		
		document.getElementById("round").textContent = "16강 "+(sixteenIndex+1)+"/8";
		
		
		left.innerHTML = "<img id='leftimg' onclick='next()' src='"+image[sixteen[sixteenIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='next2()' src='"+image[sixteen[sixteenIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[sixteen[sixteenIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[sixteen[sixteenIndex*2+1]].name;
	}
	function next2(){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		if(sixteenIndex == 7){
			eight[sixteenIndex] = sixteenIndex*2+1;
			left.innerHTML = "<img id='leftimg' onclick='eightFinal()' src='"+image[eight[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='eightFinal2()' src='"+image[eight[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[eight[0]].name;
			document.getElementById("rightName").innerHTML = image[eight[1]].name;
			document.getElementById("round").textContent = "8강 1/4";
			return;
		}
		
		eight[sixteenIndex] = sixteenIndex*2+1;
		sixteenIndex=sixteenIndex+1;
		
		document.getElementById("round").textContent = "16강 "+(sixteenIndex+1)+"/8";
		
		left.innerHTML = "<img id='leftimg' onclick='next()' src='"+image[sixteen[sixteenIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='next2()' src='"+image[sixteen[sixteenIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[sixteen[sixteenIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[sixteen[sixteenIndex*2+1]].name;
	}
	function eightFinal(flag){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
					
		if(eightIndex==3){
			four[eightIndex]=eight[eightIndex*2];
			left.innerHTML = "<img id='leftimg' onclick='semiFinal()' src='"+image[four[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='semiFinal2()' src='"+image[four[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[four[0]].name;
			document.getElementById("rightName").innerHTML = image[four[1]].name;
			document.getElementById("round").textContent = "4강 1/2";
	
			return;
		}
		
		four[eightIndex]=eight[eightIndex*2];
		eightIndex=eightIndex+1;
		
		document.getElementById("round").textContent = "8강 "+(eightIndex+1)+"/4";
		
		left.innerHTML = "<img id='leftimg' onclick='eightFinal()' src='"+image[eight[eightIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='eightFinal2()' src='"+image[eight[eightIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[eight[eightIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[eight[eightIndex*2+1]].name;
		
	}
	function eightFinal2(flag){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		if(eightIndex==3){
			four[eightIndex]=eight[eightIndex*2+1];
			left.innerHTML = "<img id='leftimg' onclick='semiFinal()' src='"+image[four[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='semiFinal2()' src='"+image[four[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[four[0]].name;
			document.getElementById("rightName").innerHTML = image[four[1]].name;
			document.getElementById("round").textContent = "4강 1/2";
			
			return;
		}
		
		four[eightIndex]=eight[eightIndex*2+1];
		eightIndex=eightIndex+1;
		
		document.getElementById("round").textContent = "8강 "+(eightIndex+1)+"/4";
		
		left.innerHTML = "<img id='leftimg' onclick='eightFinal()' src='"+image[eight[eightIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='eightFinal2()' src='"+image[eight[eightIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[eight[eightIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[eight[eightIndex*2+1]].name;
	}
	function semiFinal(flag){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		

		
		if(fourIndex==1){
			two[fourIndex]=four[fourIndex*2];
			document.getElementById("round").textContent = "결승";
			left.innerHTML = "<img id='leftimg' onclick='Final(0)' src='"+image[two[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='Final(1)' src='"+image[two[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[two[0]].name;
			document.getElementById("rightName").innerHTML = image[two[1]].name;
			return;
		}
		
		two[fourIndex]=four[fourIndex*2];
		fourIndex=fourIndex+1;
		
		document.getElementById("round").textContent = "4강 2/2";
		
		left.innerHTML = "<img id='leftimg' onclick='semiFinal()' src='"+image[four[fourIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='semiFinal2()' src='"+image[four[fourIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[four[fourIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[four[fourIndex*2+1]].name;
	}
	function semiFinal2(flag){
		var left = document.getElementById("left");
		var right = document.getElementById("right");
		
		
		
		if(fourIndex==1){
			two[fourIndex]=four[fourIndex*2+1];
			document.getElementById("round").textContent = "결승";
			left.innerHTML = "<img id='leftimg' onclick='Final(0)' src='"+image[two[0]].source+"'>";
			right.innerHTML = "<img id='rightimg' onclick='Final(1)' src='"+image[two[1]].source+"'>";
			document.getElementById("leftName").innerHTML = image[two[0]].name;
			document.getElementById("rightName").innerHTML = image[two[1]].name;
			return;
		}
		
		two[fourIndex]=four[fourIndex*2+1];
		fourIndex=fourIndex+1;
		
		document.getElementById("round").textContent = "4강 2/2";
		
		left.innerHTML = "<img id='leftimg' onclick='semiFinal()' src='"+image[four[fourIndex*2]].source+"'>";
		right.innerHTML = "<img id='rightimg' onclick='semiFinal2()' src='"+image[four[fourIndex*2+1]].source+"'>";
		document.getElementById("leftName").innerHTML = image[four[fourIndex*2]].name;
		document.getElementById("rightName").innerHTML = image[four[fourIndex*2+1]].name;
	}
	function Final(num){
		document.getElementById("leftName").innerHTML=" ";
		document.getElementById("rightName").innerHTML=" ";
		document.getElementById("round").innerHTML = "우승 "+image[two[num]].name;
		
		document.getElementById("left").innerHTML=" ";
		document.getElementById("right").innerHTML=" ";
		document.getElementById("divVS").innerHTML="<img id='rightimg' src='"+image[two[num]].source+"'>";
	}
	</script>
</body>
</html>