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
%>
</body>
</html>