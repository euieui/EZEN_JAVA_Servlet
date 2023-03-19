<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>076_myPage.jsp</title>
</head>
<body>
<%
if(session.getAttribute("loginUser")==null){
	response.sendRedirect("071_LoginForm.jsp");
}else{
%>
	아이디 : <%= session.getAttribute("loginUser") %><br>
	성명 : 홍길동
	주소 : 서울특별시 마포구...
	전화번호 : 010-XXXX-XXXX
	<input type="button" value = "정보 수정">

<%
}
%>



</body>
</html>