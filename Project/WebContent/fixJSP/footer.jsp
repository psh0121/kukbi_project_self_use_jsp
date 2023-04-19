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

footer {
	padding: 3em;
	background-color: rgb(10, 37, 73);
}

footer h3, footer h4 {
	color: white;
	padding: 0.8em 0; 
}

footer a {
	font-size: 0.9rem;
	color: rgb(235, 235, 235);
	text-decoration: none;
	padding: 0.5em 0;
}

footer p {
	color: white;
	padding: 0.5em 0;
	font-size: 0.9rem;
}

.footer-icon {
	width: 40px;
	height: 40px;
	margin-top: 3em;
}

.title-footer {
	/* display: flex - footer의 타이틀 정보를 가로로 설정 */
	display: flex;
}

.sub-title-footer {
	margin: 0 10em 3em 0;
}

.sub-title-footer a {
	/* display: block - 인라인 형식의 a태그 블록모드로 설정 */
	display: block;
}
</style>

</head>
<body>
	<!-- footer -->
	<footer>
		<div class="title-footer">
			<div class="sub-title-footer">
				<h4>소개</h4>
				<a href="./about.jsp">간편한 디자인</a>
				<a href="./about.jsp">실시간 소통</a>
				<a href="./about.jsp">긴급메이트 모집</a>
				<a href="./about.jsp">일정공유</a>
			</div>
			
			<div class="sub-title-footer">
				<h4>문의</h4>
				<a href="./fqa.jsp">자주하는 질문</a>
				<a href="./contact.jsp">사업 제휴</a>
				<a href="./contact.jsp">광고문의</a>
				<a href="./contact.jsp">입점문의</a>
			</div>
			
			<div class="sub-title-footer">
				<h4>고객센터</h4>
				<p>전화: 1234-5678 (24시간 연중무휴)</p>
				<p>이메일(고객전용): inquiry@travel.im</p>
				<p>이메일(외부기관전용): contact@travel.im</p>
				<a href="./contact.jsp">민원 접수</a>
			</div>
		</div>
		<div>
            <h3>(주)렛츠트레블</h3>
            <p> 사업자 등록번호 : 123-45-56789 | 대표 : 박수현</p>
            <p>12345 인천광역시 미추홀구 렛츠트레블로123번길 45, 12층(여행동, 렛츠트레블)</p>
            <p>고객센터 : 인천광역시 미추홀구 렛츠트레블로123번길 45, 11층(여행동, 렛츠트레블)</p>
            <br>
            <p>This homepage is not a real homepage.</p>
            <p>It is a homepage made for learning purposes.</p>
            <img class="footer-icon" src="./image/icon.png">
		</div>
	</footer>
</body>
</html>