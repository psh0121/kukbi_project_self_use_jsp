<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/contact_text.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section -->
	<section>
		<p class="section-title">글쓰기</p>

        <!-- contents -->
        <div class="section-contents">
            <table>
                <tr>
                    <th>제목</th>  
                    <td>test</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>test</td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>test</td>
                </tr>
                <tr>
                    <th>분류</th>
                    <td>test</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>test</td>
                </tr>
            </table>

            <div class="section-contents-btn">
                <input type="button" value="작성" id="btn-finish">
                <input type="button" value="취소" id="btn-cancel">
            </div>
        </div>
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./contact_text.js"></script>

</body>
</html>