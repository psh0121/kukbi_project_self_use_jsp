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

String sql = "insert into contact_db values(contact_db_seq.nextval, " +
					"'" + title + "', " +
					"'" + writer + "', " +
					"'" + pwd + "', " +
					"'" + select + "', " +
					"'" + content + "', " +
					"sysdate, " +
					"'F', " +
					"'" + protect + "')";

int result = 0;

try {
	conn = DBConnection.getConnection();
	stmt = conn.createStatement();
	
	result = stmt.executeUpdate(sql);
	
	if(conn.getAutoCommit() == false) conn.commit();
	
	stmt.close();
	conn.close();
	
	response.sendRedirect("./contact.jsp");
}

catch(Exception e) {
	System.out.println("[Error]" + e.getMessage());
}
%>
</body>
</html>