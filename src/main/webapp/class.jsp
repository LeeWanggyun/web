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
String url = "jdbc:mairadb://localhost:3306/kd";
String user = "root";
String password = "kd1824java";
Connection con = DriverManager.getConnection(url, user, password);
Statement stmt = con.createStatement();
String sql = "SELECT * FROM BOARD_INFO";
ResultSet rs = stmt.executeQuery(sql);
%>
</body>
</html>