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
                    <td>
                    	<input type="text" id="ct-title">
                    </td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>
                    	<input type="text" id="ct-writter">
                    </td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                    	<input type="password" id="ct-pwd">
                    	<input type="checkbox" id="ct-protect">
                    	<label for="ct-protect">관리자외 비공개모드로 전환합니다</label>
                    </td>
                </tr>
                <tr>
                    <th>분류</th>
                    <td>
                        <select id="ct-select">
                        	<option value="basic" selected="selected">--- 해당하는 항목을 선택해주세요 ---</option>
                            <option value="notice">공지</option>
                            <option value="inquiry">문의</option>
                            <option value="report">신고</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>
                    	<textarea name="" id="" cols="30" rows="10"></textarea>
                    </td>
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