<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Calendar date = Calendar.getInstance();
SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<h1>오늘은
<%
	Date d = date.getTime();
	out.print(today.format(d));
%>
입니다
</h1>
</body>
</html>