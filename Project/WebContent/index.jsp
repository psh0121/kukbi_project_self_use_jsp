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
<link rel="stylesheet" href="./stylecss/style.css">
</head>

<body>
	<!-- nav -->
	<nav class="global-nav">
		<div class="global-nav-links">
			<label class="global-nav-home-label">
				<img class="home-icon" src="./image/icon.png">
				<a href="index.jsp">Let's travel</a>
			</label>
			
			<a class="global-nav-link" href="index.jsp">홈</a>
			<a class="global-nav-link" href="about.jsp">소개</a>
			<a class="global-nav-link" href="fqa.jsp">자주하는질문</a>
			<a class="global-nav-link" href="contact.jsp">고객센터</a>
		</div>
	</nav>
	
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
			<div>
				<p>같이 여행갈 친구가 없다면,</p>
				<p>새로운 여행메이트를 원한다면,</p>
				<p>Let's travel</p>
			</div>
			<img src="./image/icon.png">
		</div>
	</section>

    <!-- 외부파일 JS -->
	<script src="./main.js"></script>
</body>
</html>