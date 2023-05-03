<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Let's travel</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/fix.css">
<link rel="stylesheet" href="./stylecss/style.css">
</head>

<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section0 -->
	<video src="./video/section0_road.mp4" muted loop autoplay></video>
	<section class="section0">
		<!-- contents -->
		<div class="section0-contents">
			<div class="section0-contents-messages">
				<p class="section0-contents-message0">
					같이 여행갈 친구가 없다면,<br>
					새로운 여행메이트를 원한다면,
				</p>
				<p class="section0-contents-message1">Let's travel</p>
			</div>
			
			<img class="section0-contents-img" src="./image/icon.png">
		</div>
	</section>
	
	<!-- section1 -->
	<section class="section1">
		<!-- title -->
		<div class="section1-title">
			<p>Let's travel APP</p>
		</div>
		
		<!-- contents -->
		<img class="section1-contents-img" src="./image/section1_app.png">
		<div class="section1-contents">
			<div class="section1-contents-messages section1-contents-message0">
				<h1>간편한 디자인</h1>
				<p>
					손쉬운 UI 구성으로 누구나 편리하게<br>
					이용할 수 있도록 제작되었습니다.
				</p>
			</div>
			
			<div class="section1-contents-messages section1-contents-message1">
				<h1>실시간 소통</h1>
				<p>
					회원들간의 실시간 소통이 가능해 다양한<br>
					사람들과 의견을 주고받을 수 있습니다.
				</p>
			</div>
			
			<div class="section1-contents-messages section1-contents-message2">
				<h1>긴급메이트 모집</h1>
				<p>
					긴급메이트 모집기능이 추가되어<br>
					빠르게 여행메이트를 정할 수 있습니다.
				</p>
			</div>
			
			<div class="section1-contents-messages section1-contents-message3">
				<h1>일정공유</h1>
				<p>
					회원들간의 일정공유가 가능해<br>
					여행계획을 짤 때 도움이 될 것입니다.
				</p>
			</div>
		</div>
	</section>
	
	<!-- section2 -->
	<section class="section2">
		<!-- title -->
		<div class="section2-title">
			<p>Let's travel에 오신 여러분 환영합니다</p>
		</div>
		
		<!-- contents -->
		<div class="section2-contents">
			<div class="section2-content0">
				<img src="./image/section2_friend.png">
				<div>
					<h1>여행메이트를 구하고 싶은 분</h1>
					<p>
						혼자 여행은 지루하시다고요?<br>
						여행메이트모집 서비스를 이용해 함께 할 여행메이트를 만나보세요.<br>
						잊지못할 추억이 당신을 기다리고 있을겁니다.
					</p>
				</div>
			</div>
			
			<div class="section2-content1">
				<img src="./image/section2_lonly.png">
				<div>
					<h1>갑자기 떠나고 싶은 분</h1>
					<p>
						갑자기 여행을 떠나시고 싶은데 당장 어디로 가야할지 망설여지시나요?<br>
                       	메이트들이 공유한 여행정보로 편안히 다녀오세요.<br>
                       	실시간으로 업데이트되는 정보로 무계획이지만 계획적인 여행경험 즐겨보세요.
					</p>
				</div>
			</div>
			
			<div class="section2-content2">
				<img src="./image/section2_healing.png">
				<div>
					<h1>나의 여행을 기록하고 싶은 분</h1>
					<p>
						이번에 다녀온 여행이 만족스러우셨군요.<br>
                       	최고의 여행을 기록해보세요.<br>
                       	나의 일지가 될뿐만 아니라, 나의 기록으로 누군가에게도 좋은 추억을 선사해줄수 있어요.
					</p>
				</div>
			</div>
		</div>
	</section>
	
	<!-- section3 -->
	<section class="section3">
		<canvas class="section3-canvas" width="1920" height="1080"></canvas>
		
		<!-- contents -->
		<div class="section3-contents">
			<p class="section3-contents-message0">여행은 Let's play와 함께해요</p>
		</div>
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>

    <!-- 외부파일 JS -->
	<script src="./main.js"></script>
</body>
</html>