<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 스타일 -->
<style type="text/css">
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

/* 웹폰트 : 강원교육튼튼체 */
@font-face {
    font-family: 'GangwonEduPowerExtraBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

html {
	font-size: 14px;
	font-family: 'NanumSquareNeo-Variable';
}

body {
	height: 4000px;
	overflow-x: hidden; 	/* 수평 스크롤 제거 */
	letter-spacing: -0.04rem;
}

nav {
	/* absolute - 스크롤시 자연스럽게 넘어갈 수 있도록 함 */
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 70px;
}

nav a {
	text-decoration: none;
	color: rgb(235, 235, 235);
	text-shadow: 1px 1px 2px rgb(47, 47, 47);
}

.home-icon {
	width: 30px;
	height: 30px;
}

.global-nav-links {
	/* flex - nav안에 있는 link 정렬*/
	display: flex;
	align-items: center;
	justify-content: space-between;
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 5px 0 5px;
	height: 100%;
}

.global-nav-link {
	font-size: 1.1rem;
	font-weight: bold;
}

.global-nav-home-label {
	/* flex - 라벨로 묶여있는 이미지와 링크의 정렬 관리 */
	display: flex;
	align-items: center;
}

.global-nav-home-label a {
	font-size: 2.3rem;
	font-weight: bold;
	padding-left: 5px;
	color: rgb(235, 235, 235);
}
</style>

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
			<a class="global-nav-link" href="about.jsp">회사 소개</a>
			<a class="global-nav-link" href="fqa.jsp">자주하는 질문</a>
			<a class="global-nav-link" href="contact.jsp">고객센터</a>
		</div>
	</nav>
</body>
</html>