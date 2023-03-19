<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>http://localhost:8090/WEB07_JSP_SERVLET/01/04_Checkbox_to.jsp?item=shoes&item=bag&item=belt&item=cap&item=watch&item=diamond</h3>
<h3>item 에 여러개 value 값이 저장이 된다! 따라서 받는 방법이 다르다!</h3>
<br>
<br>

<%
	String items[] = request.getParameterValues("item");
if (items ==null){
	//out.println("<h3>선택한 항목이 없습니다</h3>");
%>
	<h3>선택한 항목이 없습니다.</h3>	
<% 
}else{
%>
	<h3>당신이 선택한 항목입니다</h3>
<%
	for(String it : items){
%>		
	<%=it %>&nbsp;&nbsp;
<% 
	}
}
%>

</body>
</html>