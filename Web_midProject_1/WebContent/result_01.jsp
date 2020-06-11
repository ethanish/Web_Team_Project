<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>당신과 성향이 맞는 강아지는?</title>
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
	<!-- NumOpenness : 개방성 지수 / NumSincerity : 성실성 지수 / NumExtra : 외향성 지수 / NumAgree : 친화성 지수 / NumNeur : 신경성 지수-->
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
					.write("<div style='line-height: 7em; font-family: fireF; font-size: 35px; text-align: center; color:#58ACFA;'>당신과 성향이 맞는 강아지는?</div><div style='text-align: center;'>");
			if (maxNum > 7) {
				for (var i = 0; i < Numarr.length; i++) {
					if (maxNum == Numarr[i]) {

						//인덱스 0은 개방성,1은 성실성,2는친화성,3은외향성,4는친화성,5는신경성
						if (i == 0) {
							document.write("<div id='dogname'>포메라니안</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Pomeranian.png' width='256' height='170' />");
							document.write("<div id='info'> <br><br>포메라니안은 머리회전이 빠르며 원기왕성하고 발랄하다. 또한, 세상에 대한 호기심이 커 타 견종에게 관심이 많으며, 작고 우아한 몸집 상 도시 생활에 어울리는 개이다. 그러나 포메라니안은 강아지 때부터 주인에 대한 복종 훈련이 필요한 종으로 아이들보다 어른이 키우는 게 적합하다.  또한 성격이 급한 편이며, 많이 짖고 곧잘 흥분하는 면이 있다.<br><br>당신은 상상력, 호기심, 모험심, 예술적 감각 등으로 보수주의에 반대하는 성향입니다. 개인의 심리 및 경험의 다양성과 관련된 것으로, 지능, 상상력, 고정관념의 타파, 심미적인 것에 대한 관심, 다양성에 대한 욕구, 품위 등과 관련된 특질을 포함합니다.<br><br><br><br><br></div>");
						} else if (i == 1) {
							document.write("<div id='dogname'>셰퍼드</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Shepherd.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>셰펴드는 독일의 전통적인 가축몰이 개와 농장 개로부터 개량된 사역견 품종으로 영리하고 붙임성이 있으며 책임감이 강하다. 대처상황에 용감하고 경계심이 강하다. 일반적으로 충성심이 강한 개 TOP3에 포함될 정도로 주인에 대한 충성심과 복종심이 강하다.<br><br>당신은 목표를 성취하기 위해 성실하게 노력하는 성향입니다.과제 및 목적 지향성을 촉진하는 속성과 관련된 것으로, 심사숙고, 규준이나 규칙의 준수, 계획 세우기, 조직화, 과제의 준비 등과 같은 특질을 포함합니다.<br><br><br><br><br></div>");
						} else if (i == 2) {
							document.write("<div id='dogname'>비글</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Beagle.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>비글은 다른 반려동물이나 어린이들과 잘 어울리는 견종으로 널리 알려져 있다. 애착이 많은 활발하고 낙천적인 견종이다. 같이 있는 것을 좋아하고 혼자 남겨졌을 시 늑대처럼 울부짖고 파괴적일 수 있다.<br><br>당신은 다른 사람과의 사교, 자극과 활력을 추구하는 성향입니다.사회와 현실 세계에 대해 의욕적으로 접근하는 속성과 관련된 것으로, 사회성, 활동성, 적극성과 같은 특질을 포함합니다.<br><br><br><br><br></div>");
						} else if (i == 3) {
							document.write("<div id='dogname'>웰시 코기</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Welsh.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>웰시 코기는 상당히 적극적이고 호기심이 많은 편이다.사람과 스킨쉽하기를 무척이나 좋아하고 애교도 많은 데다 어린이에 대한 친밀도가 특히 높다.그리고 또한 머리가 좋은 견종이기도 하다. <br><br>당신은 타인에게 반항적이지 않은 협조적인 태도를 보이는 성향입니다.사회적 적응성과 타인에 대한 공동체적 속성을 나타내는 것으로, 이타심, 애정, 신뢰, 배려, 겸손 등과 같은 특질을 포함합니다.<br><br><br><br><br></div>");
						} else if (i == 4) {
							document.write("<div id='dogname'>진돗개</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Jindo.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>진돗개는 많은 사냥개 혈통의 개들이 그렇듯이 진돗개도 적절하게 산책과 운동을 할 공간이 부족하면 스트레스를 받고 묶어만 두면 몹시 사나워진다.이런 때에 특히 낯선 사람이 다가오게 되면 예민해져서 물려고 들게 된다. 따라서 묶어만 두지 않고 어릴적부터 넓은 공간에서 풀어서 키우면서 사교성을 키우고 친근하게 행동하도록 하는 훈련을 시키는 것이 무엇보다 중요하다. <br><br>당신은 분노, 우울함, 불안감과 같은 불쾌한 정서를 쉽게 느끼는 성향입니다.걱정, 부정적 감정 등과 같은 바람직하지 못한 행동과 관계된 것으로, 걱정, 두려움, 슬픔, 긴장 등과 같은 특질을 포함합니다.<br><br><br><br><br></div>");
						}

					}
				}

			} else {
				for (var i = 0; i < Numarr.length; i++) {
					if (minNum == Numarr[i]) {

						//인덱스 0은 개방성,1은 성실성,2는친화성,3은외향성,4는친화성,5는신경성
						if (i == 0) {
							document.write("<div id='dogname'>아프간 하운드</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='AfghanHound.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>아프간 하운드는 똑똑하고 민첩, 활발하고 장난기 많은 성격을 지니고 있다.애정이 깊고, 주인을 항상 걱정하고 있는것 같은 일면도 있다.자립심이 강하고 항상 의연한 태도로 감정을 잘 안드러내는 편이고아이에 대해서는 기본적으로 상냥하게 대해주지만함께 어울리며 놀지는 않는 타입의 견종이다.하지만 모험을 좋아하지 않고 호기심이 많이 없는 견종으로도 잘 알려져 있다.<br><br>당신은 새로운 것이나 진보적인 것을 반대하고 전통적인 것을 따르고 지키려는 성향을 가지고 있습니다.<br><br><br><br><br></div>");
						} else if (i == 1) {
							document.write("<div id='dogname'>불독</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='bullDog.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>불독은 산업혁명이후 영국사람들과 프랑스로 넘어가 많은 파리 사람들에게 사랑받았다. 딱히 사역견으로 활동을 위해 길러진 품종이 아니라 많은 활동량을 가지고 있지 않다.대표적으로 하루종일 엎드려 있는 모습을 많이 볼 수 있는 견종이다.더구나 짧은 호흡 기관의 문제로 인하여 격한 운동은 피해야하는데 비만 문제를 해결해 주는 것도 큰 문제라고 한다.<br><br>당신은 그 자리에서 바로 일어나는 감흥이나 기분에 따라 하는 성향을 가지고 있습니다.<br><br><br><br><br></div>");
						} else if (i == 2) {
							document.write("<div id='dogname'>그레이 하운드</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='grayHound.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>그레이 하운드는 부끄러움이 많고 소심한 성격을 지니고 있어 새로운 동물이나 사람을 만나면 별로 관심이 없거나 겁을 먹는다. 이 같은 성격의 강아지에게 자꾸 모르는 동물과 놀라고 하거나 낯선 공간에 데려간다면? 스트레스를 받는다. 심한 경우, 주인과의 유대감과 신뢰감이 낮아진다. 따라서, 새로운 환경에 적응 시키고자 한다면 아주 느리고 조심스럽게 노출시켜야 한다. 끊임없이 ‘여기는 안전한 곳이고, 너도 안전하다’라는 것을 알려주어야 하기 때문이다. 또한, 낯선 환경에 적응하는 모습을 보이거나 용기를 내는 모습이 보인다면 폭풍 칭찬 및 훈련을 통해 자신감을 키워주는 것이 중요하다.<br><br>당신은  내성적이고, 자기 반성적이지만 사람들과의 깊이 있는 교류를 선호합니다. 그리고 고독을 즐기는 성향을 가진 사람이 많습니다.<br><br><br><br><br></div>");
						} else if (i == 3) {
							document.write("<div id='dogname'>시베리안 허스키</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='Husky.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>시베리안 허스키는 독립성이 강한 성격이 있다. 이 경우, 보통 한 사람과만 강한 유대관계를 구축한다. 그리고 낯선 동물 및 사람, 심지어는 충성하는 1명을 제외한 다른 가족들에게는 무관심한 경향도 있다. 독립성이 강하면 고집도 세기 때문에 훈련이 힘든 편이다. 강압적인 훈련을 하게 되면 공격성이 높아지는 경향이 있다. 따라서, 간식이나 장난감 등 다양한 보상 방법 중 어떤 것에 가장 많이 동기부여를 받는지 먼저 파악해야 한다.<br><br>당신은 남에게 의지하거나 속박되지 아니하고 홀로 서려는 성질이나 성향입니다. <br><br><br><br><br></div>");
						} else if (i == 4) {
							document.write("<div id='dogname'>골든 리트리버</div>");
							document.write("<img style='border: 2px solid black;border-radius: 70px;-moz-border-radius: 70px;-khtml-border-radius: 70px;-webkit-border-radius: 70px;' src='golden.jpg' width='256' height='170' />");
							document.write("<div id='info'> <br><br>골든 리트리버는 태생적으로 매사에 긍정적인 성격도 있다. 처음 본 사람은 물론 다른 강아지, 고양이와도 금방 친해진다. 신이 나면 이리저리 왔다 갔다 거리고 점프를 하는데, 그 동작이 크고 조심성이 없어서 잘 다치기도 한다. <br><br>당신은 개인이 지속적으로 나타내는 긍정적인 행동양식이나 탁월한 성품과 덕목을 가진 성향입니다. 긍정특질에는 창의성, 지혜, 끈기, 진실성, 겸손, 용기, 열정, 리더십, 낙관성, 유머, 영성 등이 있습니다.<br><br><br><br><br></div>");
						}

					}
				}
			}
			
			document.write("</div>");
		}
	</script>
</body>
</html>