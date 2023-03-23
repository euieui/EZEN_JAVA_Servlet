<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table cellspacing="1" width="500" bgcolor="black">
	<%for (int i = 1 ; i<6 ; i ++) {
		%><tr height="80" bgcolor="white">
		<% for ( int j = 1 ; j<6 ; j++) {%>
			<td><%=i %>행<%=j %>열</td>
		<%} %>
		</tr>	
	<%} %>
	
</table>


</body>
</html>