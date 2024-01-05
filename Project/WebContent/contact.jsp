<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page import="java.util.Date" %>
<%@ page import="DBPKG.DBConnection" %>
    
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
	
<%
Connection conn = null;
Statement stmt = null;
ResultSet rsetOnlyNotice = null;
ResultSet rsetNotNotice = null;

int numID = 0;
String title = "";
String writer = "";
String pwd = "";
String division = "";
String content = "";
Date createDate = null;
String answerFlag = "";
String protectFlag = "";

String sqlOnlyNotice = "select * from contact_db where division='공지' order by create_date desc";
String sqlNotNotice = "select * from contact_db where not division='공지' order by create_date desc";
%>
	
	<!-- section -->
	<section>
		<p class="section-title">고객센터</p>

        <!-- contents -->
        <div class="section-contents">
            <div class="section-contents-title">
                <p class="notice-btn">공지</p>
                <p class="inquiry-btn">문의</p>
                <p class="report-btn">신고</p>
            </div>

            <table>
                <tr>
                    <th class="tbl-num">번호</th>
                    <th class="tbl-seperate">분류</th>
                    <th class="tbl-title">제목</th>
                    <th class="tbl-auth">작성자</th>
                    <th class="tbl-date">날짜</th>
                    <th class="tbl-reply">답변</th>
                </tr>

<%
try {
	conn = DBConnection.getConnection();
	stmt = conn.createStatement();
	rsetOnlyNotice = stmt.executeQuery(sqlOnlyNotice);
	
	// 공지
	while(rsetOnlyNotice.next()) {
		numID = rsetOnlyNotice.getInt("num_id");
		title = rsetOnlyNotice.getString("title");
		writer = rsetOnlyNotice.getString("writer");
		division = rsetOnlyNotice.getString("division");
		createDate = rsetOnlyNotice.getDate("create_date");

%>
				<tr class="notice-content">
                    <td><%= numID %></td>
                    <td><%= division %></td>
                    <td><%= title %></td>
                    <td><%= writer %></td>
                    <td><%= createDate %></td>
                    <td>공지글</td>
                </tr>
<%
	}
	
	rsetNotNotice = stmt.executeQuery(sqlNotNotice);
	
	// 공지제외 나머지(문의, 신고)
	while(rsetNotNotice.next()) {
		numID = rsetNotNotice.getInt("num_id");
		title = rsetNotNotice.getString("title");
		writer = rsetNotNotice.getString("writer");
		division = rsetNotNotice.getString("division");
		createDate = rsetNotNotice.getDate("create_date");
		answerFlag = rsetNotNotice.getString("answer_flag");
		
		if(answerFlag == "T") answerFlag = "답변완료";
		else answerFlag = "답변전";
		
		if(division.equals("문의")) {
%>
				<tr class="inquiry-content">
                    <td><%= numID %></td>
                    <td><%= division %></td>
                    <td><%= title %></td>
                    <td><%= writer %></td>
                    <td><%= createDate %></td>
                    <td><%= answerFlag %></td>
                </tr>
<%			
		}
		else if(division.equals("신고")) {
%>
				<tr class="report-content">
                    <td><%= numID %></td>
                    <td><%= division %></td>
                    <td><%= title %></td>
                    <td><%= writer %></td>
                    <td><%= createDate %></td>
                    <td><%= answerFlag %></td>
                </tr>
<%			
		}				
	}
}

catch(Exception e) {
	System.out.println("[Error]" + e.getMessage());
}
%>                
                
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