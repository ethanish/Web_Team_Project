<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ��õ ����Ʈ</title>

<style type="text/css">
@font-face {

	font-family: 'photoF';
	src: url(PhotoFont.ttf);
}

@font-face {
	font-family: 'rocatF';
	src: url(rocatFont.ttf);
}

@font-face {
	font-family: 'fireF';
	src: url(fireFont.ttf);
	font-color : #58ACF;
}

.button1 {
	width: 100px;
	background-color: #F33131;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}

.button2 {
	width: 100px;
	background-color: #58ACFA;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}

</style>

</head>
<body>

	<div style="width : 50%;float:left;box-sizing:border-box;border:1px solid #000;">
	<div style="text-align: center;">
		<img src='airplane.png' width='241' height='244' />
	</div>
	<div style="font-family: fireF; font-size: 50px; text-align: center;color:#F33131;">
		����� <br> ���� <br> ���� <br>��������?
	</div>
	<br><br>
	<div style="text-align: center;">
		<button class="button1" type="button"
			onclick="location.href='worldcup.jsp'" style="font-family: photoF">������ �̻��� ������
			START</button>
	</div>
	</div>
	
	<div style="width : 50%; float:right;box-sizing:border-box;border:1px solid #000;">
	<div style="text-align: center;">
		<img src='airplaneR.png' width='241' height='244' />
	</div>
	<div style="font-family: fireF; font-size: 50px; text-align: center; color:#58ACFA;">
		��Ű� <br> ������ <br> �´� <br>��������?
	</div>
	<br><br>
	<div style="text-align: center;">
		<button class="button2" type="button"
			onclick="location.href='Question.html'" style="font-family: photoF">������    ������   �׽�Ʈ START</button>
	</div>
	</div>
	
	<div style="font-family: photoF;text-align: center;position:fixed; margin:0 auto;left:0;right:0; width:100px;height:50px;background-color:white;border:1px solid #000">
	wodh0120��<br> ȯ���մϴ�.
	</div>

</body>
</html>