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
SimpleDateFormat today = new SimpleDateFormat("yyyy�� MM�� dd��");
%>
<h1>������
<%
	Date d = date.getTime();
	out.print(today.format(d));
%>
�Դϴ�
</h1>
</body>
</html>