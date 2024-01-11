<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page import="DBPKG.DBConnection" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 입력</title>
</head>
<body>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rset = null;

request.setCharacterEncoding("UTF-8");

String numId = request.getParameter("numId");
String pwd = "";
String protectFlag = "";

String sql = "select * from contact_db where num_id=" + numId;

try {
	conn = DBConnection.getConnection();
	stmt = conn.createStatement();
	rset = stmt.executeQuery(sql);
	
	while(rset.next()) {
		pwd = rset.getString("pwd");
		//protectFlag = rset.getString("protect_flag");
	}
}

catch(Exception e) {
	System.out.println("[Error]" + e.getMessage());
}
%>
<script>
(() => {

    /////////////////////////////////////////////////////////
	// 이벤트 핸들러

    // 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        const inputPwd = prompt("비밀번호를 입력해주세요", undefined);
        
        if(inputPwd !== '<%= pwd %>') {
            alert("입력한 비밀번호가 다릅니다.");
            history.back();
        }
        else {
            window.location.href = "./contact_inquiry.jsp?numId=" + '<%= numId %>';
        }
    })
})();
</script>
</body>
</html>