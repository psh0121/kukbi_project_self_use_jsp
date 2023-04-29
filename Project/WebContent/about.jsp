<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's travel : 소개</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/about.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section0 -->
	<section class="section0">
		<!-- contents -->
		<div class="section0-contents">
			<div class="section0-contents-message">
				<p>
					여행, 이제는<br>
					실천으로 옮겨야할 때 입니다
				</p>
				<img src="./image/about/section0_arrow.png" class="section0-arrow">
			</div>
		</div>
	</section>
	
	<!-- section1 -->
	<section class="section1">
		<!-- contents -->
		<div class="section1-contents">
			<p class="section1-contents-messageTitle">
				자유를 열망하는 사람들이 모여,<br>
				모두가 추구하는 최고의 서비스를 제공하기 위해 노력합니다.
			</p>
			
			<div class="section1-contents-messageBox">
				<div class="section1-contents-messageBox-style">
					<p>목표 가입자수</p>
					<p>2,200만 +</p>
				</div>
				
				<div class="section1-contents-messageBox-style">
					<p>희망 투자금액</p>
					<p>1조원 +</p>
				</div>
			</div>
			
			<div class="section1-contents-messageBox">
				<div class="section1-contents-messageBox-style">
					<p>전체 팀원 수</p>
					<p>1,000명 +</p>
				</div>
				
				<div class="section1-contents-messageBox-style">
					<p>추후 출시 서비스 수</p>
					<p>50개 +</p>
				</div>
			</div>
			
			<p class="section1-contents-messageFooter">2023년 5월 기준</p>
		</div>
	</section>
	
	<!-- section2 -->
	<section class="section2">
		<!-- contents -->
		<div class="section2-contents">
			<p>Let's travel is...</p>
			<p>
				저희는 여행의 즐거움을 배로 만들기 위해 태어난 조직입니다.<br>
				여행에 대한 정보제공과 소통의 장을 열어 
				여러분의 여행의 가치를 배로 높여드리겠습니다.
			</p>
		</div>
	</section>
	
	<!-- section3 -->
	<section class="section3">
		<!-- 함께 나아가고 싶은 기업들 -->
		<p>
			세계적인 팀들과 어깨를 나란히 하고 싶습니다.
			- 에어비앤비
			- 여기어때
			- 트리바고
			- etc ...
		</p>
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./about.js"></script>
</body>
</html>