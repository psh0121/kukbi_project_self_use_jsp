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
<title>내용</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/contact_inquiry.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section -->
	<section>
		<p class="section-title">내용</p>

<%
Connection conn = null;
Statement stmt = null;
ResultSet rset = null;

request.setCharacterEncoding("UTF-8");

String numId = request.getParameter("numId");
String title = "";
String writer = "";
String pwd = "";
String division = "";
String content = "";
Date createDate = null;
String answerFlag = "";
String protectFlag = "";

String sql = "select * from contact_db where num_id=" + numId;

try 
{
	conn = DBConnection.getConnection();
	stmt = conn.createStatement();
	rset = stmt.executeQuery(sql);
	
	while(rset.next()) 
	{
		title = rset.getString("title");
		writer = rset.getString("writer");
		pwd = rset.getString("pwd");
		division = rset.getString("division");
		content = rset.getString("content");
		createDate = rset.getDate("create_date");
		answerFlag = rset.getString("answer_flag");
		protectFlag = rset.getString("protect_flag");
	}
	
	rset.close();
	stmt.close();
	conn.close();
}

catch(Exception e) 
{
	System.out.println("[Error]" + e.getMessage());
}

%>
        <!-- contents -->
        <div class="section-contents">
                <table>
                    <tr>
                        <th>제목</th>  
                        <td>
                            <%= title %>
                        </td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>
                            <%= writer %>
                        </td>
                    </tr>
                    <tr>
                        <th>작성일</th>
                        <td>
                            <%= createDate %>
                        </td>
                    </tr>
                    <tr>
                        <th>분류</th>
                        <td>
                            <%= division %>
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>
                            <%= content %>
                        </td>
                    </tr>
                </table>            

            <div class="section-contents-btn">
                <input type="button" value="목록으로" id="btn-toList">
            </div>
        </div>
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./contact_inquiry.js"></script>

</body>
</html>