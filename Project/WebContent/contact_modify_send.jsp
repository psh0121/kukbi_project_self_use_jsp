<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>

<%@ page import="DBPKG.DBConnection" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터-글쓰기 작성</title>
</head>
<body>
<%
Connection conn = null;
Statement stmt = null;

request.setCharacterEncoding("UTF-8");

String numId = request.getParameter("numId");
String title = request.getParameter("ctTitle");
String writer = request.getParameter("ctWriter");
String pwd = request.getParameter("ctPwd");
String protect = request.getParameter("ctProtect");
String select = request.getParameter("ctSelect");
String content = request.getParameter("ctContent");

if(protect == null) protect = "F";
else protect = "T";

switch(select) {
case "notice":
	select = "공지";
	break;
case "inquiry":
	select = "문의";
	break;
case "report":
	select = "신고";
	break;
}

String sql = "update contact_db set " +
				"title = " + "'" + title + "', " +
				"writer = " + "'" + writer + "', " +
				"pwd = " + "'" + pwd + "', " +
				"division = " + "'" + select + "', " +
				"content = " + "'" + content + "', " +
				"answer_flag = " + "'F', " +
				"protect_flag = " + "'" + protect + "' " + 
				"where num_id = " + numId;

int result = 0;

try {
	conn = DBConnection.getConnection();
	stmt = conn.createStatement();
	
	result = stmt.executeUpdate(sql);
	
	if(conn.getAutoCommit() == false) conn.commit();
	
	stmt.close();
	conn.close();
	
	response.sendRedirect("./contact_inquiry.jsp?numId=" + numId);
}

catch(Exception e) {
	System.out.println("[Error]" + e.getMessage());
}
%>
<script>
</script>
</body>
</html>