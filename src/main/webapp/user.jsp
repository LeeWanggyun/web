<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/kd";
String user = "root";
String password = "kd1824java";
Connection con = DriverManager.getConnection(url, user, password);
Statement stmt = con.createStatement();
String sql = "SELECT * FROM USER_INFO";
ResultSet rs = stmt.executeQuery(sql);
%>
<table border="1">
	<tr>
		<th>유저번호</th>
		<th>유저아디</th>
		<th>유저비번</th>
		<th>유저네임</th>
	</tr>
<%
while (rs.next()) {
	out.print("<tr>");
	out.print("<td>" + rs.getInt("UI_NUM") + "</td>");
	out.print("<td>" + rs.getString("UI_ID") + "</td>");
	out.print("<td>" + rs.getString("UI_PWD") + "</td>");
	out.print("<td>" + rs.getString("UI_NAME") + "</td>");
	out.print(("</tr>"));
}
%>
</table>
</body>
</html>