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
<title>글쓰기</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/contact_text.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
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
	
	<!-- section -->
	<section>
		<p class="section-title">글쓰기</p>

        <!-- contents -->
        <div class="section-contents">
            <form action="contact_modify_send.jsp?numId=<%= numId %>" method="post" id="frm-write" name="frmWrite">
                <table>
                    <tr>
                        <th>제목</th>  
                        <td>
                            <input type="text" id="ct-title" name="ctTitle" value= <%= title %>>
                        </td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>
                            <input type="text" id="ct-writer" name="ctWriter" value= <%= writer %>>
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" id="ct-pwd" name="ctPwd">
                            <input type="checkbox" id="ct-protect" name="ctProtect">
                            <label for="ct-protect">관리자외 비공개모드로 전환합니다</label>
                        </td>
                    </tr>
                    <tr>
                        <th>분류</th>
                        <td>
                            <select id="ct-select" name="ctSelect">
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
                            <textarea id="ct-content" name="ctContent" cols="30" rows="10"><%= content %></textarea>
                        </td>
                    </tr>
                </table>
            </form>
         
            <div class="section-contents-btn">
                <input type="button" value="수정" id="btn-finish">
                <input type="button" value="취소" id="btn-cancel">
            </div>
        </div>
	</section>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script>
	(() => {
		const ctSelect = document.querySelector('#ct-select');
		
		/////////////////////////////////////////////////////////
		// 이벤트 핸들러
		
		// 로딩된 후에 발생되는 이벤트 
		window.addEventListener("load", () => {
			// 이전에 설정되어있는 option에 selected를 부여해 주도록 한다.
			switch('<%= division %>') {
			case '공지':
				ctSelect.children[1].selected = true;
				break;
			case '문의':
				ctSelect.children[2].selected = true;
				break;
			default:
				ctSelect.children[3].selected = true;
				break;
			}
		})
	})();
	</script>
	<script src="./contact_text.js"></script>

</body>
</html>