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
		<!-- 일단 먼저 뒤에 여행느낌 사진 만들고 조금 어둡게 설정하도록 한다. -->
		<p>
			모두가 여행을 떠나는 공통적인 목적은<br>
			'즐거움' 입니다
		</p>
	</section>
	
	<!-- section1 -->
	<section class="section1">
		<!-- 우리 기업이 존재하는 이유 -->
		<p>
			Let's travel is...<br>
			저희는 여행의 즐거움을 배로 만들기 위해 태어난 조직입니다.<br>
			여행에대한 다양한 정보제공과 소통의 장을 열어<br>
			여러분의 여행의 가치를 배로 높여드리겠습니다.
		</p>
	</section>
	
	<!-- section2 -->
	<section class="section2">
		<!-- 이루어 나가고 싶은 목표 -->
		<p>
			모두를 위한, 새로운 여행서비스를 제공하고자 합니다.<br>
			- 상식적인 여행정보는 당신을 윤택하게 합니다.
			- 상식적인 여행정보는 당신을 윤택하게 합니다.
			- 상식적인 여행정보는 당신을 윤택하게 합니다.
			- 상식적인 여행정보는 당신을 윤택하게 합니다.
			
		</p>
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