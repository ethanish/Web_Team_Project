<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>��Ű� ������ �´� ��������?</title>
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
	<!-- NumOpenness : ���漺 ���� / NumSincerity : ���Ǽ� ���� / NumExtra : ���⼺ ���� / NumAgree : ģȭ�� ���� / NumNeur : �Ű漺 ����-->
		var NumOpenness = 0, NumSincerity = 0, NumExtra = 0, NumAgree = 0, NumNeur = 0;

		NumOpenness =
	<%=request.getParameter("openQ1")%>
		+
	<%=request.getParameter("openQ2")%>
		+
	<%=request.getParameter("openQ3")%>
		;
		NumSincerity =
	<%=request.getParameter("sincerQ1")%>
		+
	<%=request.getParameter("sincerQ2")%>
		+
	<%=request.getParameter("sincerQ3")%>
		;
		NumExtra =
	<%=request.getParameter("extraQ1")%>
		+
	<%=request.getParameter("extraQ2")%>
		+
	<%=request.getParameter("extraQ3")%>
		;
		NumAgree =
	<%=request.getParameter("agreeQ1")%>
		+
	<%=request.getParameter("agreeQ2")%>
		+
	<%=request.getParameter("agreeQ3")%>
		;
		NumNeur =
	<%=request.getParameter("neurQ1")%>
		+
	<%=request.getParameter("neurQ2")%>
		+
	<%=request.getParameter("neurQ3")%>
		;
		//document.write(NumOpenness + " 0 " + NumSincerity + " 0 " + NumExtra+" 0 " + NumAgree+" 0 " + NumNeur);

		var Numarr = [ NumOpenness, NumSincerity, NumExtra, NumAgree, NumNeur ];

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

			document
					.write("<div style='line-height: 7em; font-family: fireF; font-size: 35px; text-align: center; color:#58ACFA;'>��Ű� ������ �´� ��������?</div><div style='text-align: center;'>");
			if (maxNum > 7) {
				for (var i = 0; i < Numarr.length; i++) {
					if (maxNum == Numarr[i]) {

						//�ε��� 0�� ���漺,1�� ���Ǽ�,2��ģȭ��,3�����⼺,4��ģȭ��,5�½Ű漺
						if (i == 0) {
							document.write("<div id='dogname'>���޶�Ͼ�</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Pomeranian.png' width='256' height='170' />");
							document.write("<div id='info'> <br><br>���޶�Ͼ��� �Ӹ�ȸ���� ������ ����ռ��ϰ� �߶��ϴ�. ����, ���� ���� ȣ����� Ŀ Ÿ �������� ������ ������, �۰� ����� ���� �� ���� ��Ȱ�� ��︮�� ���̴�. �׷��� ���޶�Ͼ��� ������ ������ ���ο� ���� ���� �Ʒ��� �ʿ��� ������ ���̵麸�� ��� Ű��� �� �����ϴ�.  ���� ������ ���� ���̸�, ���� ¢�� ���� ����ϴ� ���� �ִ�.<br><br>����� ����, ȣ���, �����, ������ ���� ������ �������ǿ� �ݴ��ϴ� �����Դϴ�. ������ �ɸ� �� ������ �پ缺�� ���õ� ������, ����, ����, ���������� Ÿ��, �ɹ����� �Ϳ� ���� ����, �پ缺�� ���� �屸, ǰ�� ��� ���õ� Ư���� �����մϴ�.<br><br><br><br><br></div>");
						} else if (i == 1) {
							document.write("<div id='dogname'>���۵�</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Shepherd.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>������ ������ �������� ������� ���� ���� ���κ��� ������ �翪�� ǰ������ �����ϰ� ���Ӽ��� ������ å�Ӱ��� ���ϴ�. ��ó��Ȳ�� �밨�ϰ� ������ ���ϴ�. �Ϲ������� �漺���� ���� �� TOP3�� ���Ե� ������ ���ο� ���� �漺�ɰ� �������� ���ϴ�.<br><br>����� ��ǥ�� �����ϱ� ���� �����ϰ� ����ϴ� �����Դϴ�.���� �� ���� ���⼺�� �����ϴ� �Ӽ��� ���õ� ������, �ɻ����, �����̳� ��Ģ�� �ؼ�, ��ȹ �����, ����ȭ, ������ �غ� ��� ���� Ư���� �����մϴ�.<br><br><br><br><br></div>");
						} else if (i == 2) {
							document.write("<div id='dogname'>���</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Beagle.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>����� �ٸ� �ݷ������̳� ��̵�� �� ��︮�� �������� �θ� �˷��� �ִ�. ������ ���� Ȱ���ϰ� ��õ���� �����̴�. ���� �ִ� ���� �����ϰ� ȥ�� �������� �� ����ó�� ���¢�� �ı����� �� �ִ�.<br><br>����� �ٸ� ������� �米, �ڱذ� Ȱ���� �߱��ϴ� �����Դϴ�.��ȸ�� ���� ���迡 ���� �ǿ������� �����ϴ� �Ӽ��� ���õ� ������, ��ȸ��, Ȱ����, ���ؼ��� ���� Ư���� �����մϴ�.<br><br><br><br><br></div>");
						} else if (i == 3) {
							document.write("<div id='dogname'>���� �ڱ�</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Welsh.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>���� �ڱ�� ����� �������̰� ȣ����� ���� ���̴�.����� ��Ų���ϱ⸦ ��ô�̳� �����ϰ� �ֱ��� ���� ���� ��̿� ���� ģ�е��� Ư�� ����.�׸��� ���� �Ӹ��� ���� �����̱⵵ �ϴ�. <br><br>����� Ÿ�ο��� ���������� ���� �������� �µ��� ���̴� �����Դϴ�.��ȸ�� �������� Ÿ�ο� ���� ����ü�� �Ӽ��� ��Ÿ���� ������, ��Ÿ��, ����, �ŷ�, ���, ��� ��� ���� Ư���� �����մϴ�.<br><br><br><br><br></div>");
						} else if (i == 4) {
							document.write("<div id='dogname'>������</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Jindo.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>�������� ���� ��ɰ� ������ ������ �׷����� �������� �����ϰ� ��å�� ��� �� ������ �����ϸ� ��Ʈ������ �ް� ��� �θ� ���� �糪������.�̷� ���� Ư�� ���� ����� �ٰ����� �Ǹ� ���������� ������ ��� �ȴ�. ���� ��� ���� �ʰ� ������� ���� �������� Ǯ� Ű��鼭 �米���� Ű��� ģ���ϰ� �ൿ�ϵ��� �ϴ� �Ʒ��� ��Ű�� ���� �������� �߿��ϴ�. <br><br>����� �г�, �����, �ҾȰ��� ���� ������ ������ ���� ������ �����Դϴ�.����, ������ ���� ��� ���� �ٶ������� ���� �ൿ�� ����� ������, ����, �η���, ����, ���� ��� ���� Ư���� �����մϴ�.<br><br><br><br><br></div>");
						}

					}
				}

			} else {
				for (var i = 0; i < Numarr.length; i++) {
					if (minNum == Numarr[i]) {

						//�ε��� 0�� ���漺,1�� ���Ǽ�,2��ģȭ��,3�����⼺,4��ģȭ��,5�½Ű漺
						if (i == 0) {
							document.write("<div id='dogname'>������ �Ͽ��</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='AfghanHound.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>������ �Ͽ��� �ȶ��ϰ� ��ø, Ȱ���ϰ� �峭�� ���� ������ ���ϰ� �ִ�.������ ���, ������ �׻� �����ϰ� �ִ°� ���� �ϸ鵵 �ִ�.�ڸ����� ���ϰ� �׻� �ǿ��� �µ��� ������ �� �ȵ巯���� ���̰���̿� ���ؼ��� �⺻������ ����ϰ� �����������Բ� ��︮�� ������ �ʴ� Ÿ���� �����̴�.������ ������ �������� �ʰ� ȣ����� ���� ���� �������ε� �� �˷��� �ִ�.<br><br>����� ���ο� ���̳� �������� ���� �ݴ��ϰ� �������� ���� ������ ��Ű���� ������ ������ �ֽ��ϴ�.<br><br><br><br><br></div>");
						} else if (i == 1) {
							document.write("<div id='dogname'>�ҵ�</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='bullDog.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>�ҵ��� ����������� ���������� �������� �Ѿ ���� �ĸ� ����鿡�� ����޾Ҵ�. ���� �翪������ Ȱ���� ���� �淯�� ǰ���� �ƴ϶� ���� Ȱ������ ������ ���� �ʴ�.��ǥ������ �Ϸ����� ����� �ִ� ����� ���� �� �� �ִ� �����̴�.������ ª�� ȣ�� ����� ������ ���Ͽ� ���� ��� ���ؾ��ϴµ� �� ������ �ذ��� �ִ� �͵� ū ������� �Ѵ�.<br><br>����� �� �ڸ����� �ٷ� �Ͼ�� �����̳� ��п� ���� �ϴ� ������ ������ �ֽ��ϴ�.<br><br><br><br><br></div>");
						} else if (i == 2) {
							document.write("<div id='dogname'>�׷��� �Ͽ��</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='grayHound.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>�׷��� �Ͽ��� �β������� ���� �ҽ��� ������ ���ϰ� �־� ���ο� �����̳� ����� ������ ���� ������ ���ų� ���� �Դ´�. �� ���� ������ ���������� �ڲ� �𸣴� ������ ���� �ϰų� ���� ������ �������ٸ�? ��Ʈ������ �޴´�. ���� ���, ���ΰ��� ���밨�� �ŷڰ��� ��������. ����, ���ο� ȯ�濡 ���� ��Ű���� �Ѵٸ� ���� ������ ���ɽ����� ������Ѿ� �Ѵ�. ���Ӿ��� ������� ������ ���̰�, �ʵ� �����ϴ١���� ���� �˷��־�� �ϱ� �����̴�. ����, ���� ȯ�濡 �����ϴ� ����� ���̰ų� ��⸦ ���� ����� ���δٸ� ��ǳ Ī�� �� �Ʒ��� ���� �ڽŰ��� Ű���ִ� ���� �߿��ϴ�.<br><br>�����  �������̰�, �ڱ� �ݼ��������� �������� ���� �ִ� ������ ��ȣ�մϴ�. �׸��� ���� ���� ������ ���� ����� �����ϴ�.<br><br><br><br><br></div>");
						} else if (i == 3) {
							document.write("<div id='dogname'>�ú����� �㽺Ű</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Husky.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>�ú����� �㽺Ű�� �������� ���� ������ �ִ�. �� ���, ���� �� ������� ���� ������踦 �����Ѵ�. �׸��� ���� ���� �� ���, ������� �漺�ϴ� 1���� ������ �ٸ� �����鿡�Դ� �������� ���⵵ �ִ�. �������� ���ϸ� ������ ���� ������ �Ʒ��� ���� ���̴�. �������� �Ʒ��� �ϰ� �Ǹ� ���ݼ��� �������� ������ �ִ�. ����, �����̳� �峭�� �� �پ��� ���� ��� �� � �Ϳ� ���� ���� ����ο��� �޴��� ���� �ľ��ؾ� �Ѵ�.<br><br>����� ������ �����ϰų� �ӹڵ��� �ƴ��ϰ� Ȧ�� ������ �����̳� �����Դϴ�. <br><br><br><br><br></div>");
						} else if (i == 4) {
							document.write("<div id='dogname'>��� ��Ʈ����</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='golden.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>��� ��Ʈ������ �»������� �Ż翡 �������� ���ݵ� �ִ�. ó�� �� ����� ���� �ٸ� ������, ����̿͵� �ݹ� ģ������. ���� ���� �̸����� �Դ� ���� �Ÿ��� ������ �ϴµ�, �� ������ ũ�� ���ɼ��� ��� �� ��ġ�⵵ �Ѵ�. <br><br>����� ������ ���������� ��Ÿ���� �������� �ൿ����̳� Ź���� ��ǰ�� ������ ���� �����Դϴ�. ����Ư������ â�Ǽ�, ����, ����, ���Ǽ�, ���, ���, ����, ������, ������, ����, ���� ���� �ֽ��ϴ�.<br><br><br><br><br></div>");
						}

					}
				}
			}
			
			document.write("</div>");
		}
	</script>
</body>
</html>