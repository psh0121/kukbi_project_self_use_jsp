<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/contact.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section -->
	<section>
		<p class="section-title">고객센터</p>

        <!-- contents -->
        <div class="section-contents">
            <div class="section-contents-title">
                <p>공지</p>
                <p>문의</p>
                <p>신고</p>
            </div>

            <table>
                <tr>
                    <th class="tbl-num">번호</th>
                    <th class="tbl-seperate">분류</th>
                    <th class="tbl-title">제목</th>
                    <th class="tbl-auth">작성자</th>
                    <th class="tbl-date">날짜</th>
                    <th class="tbl-reply">답변여부</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>공지</td>
                    <td>테스트중입니다.</td>
                    <td>홍길동</td>
                    <td>2023-06-01</td>
                    <td>답변전</td>
                </tr>
            </table>

            <div class="section-contents-btn1">
                <input type="button" value="글쓰기" id="btn-write">
            </div>
        </div>

        <!-- 하단에 검색창과 글쓰기 버튼 추가예정 -->
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./contact.js"></script>
</body>
</html>