<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr><td>안녕하세요. ${ loginUser.name}(${loginUser.userid })님 &nbsp;&nbsp; ${message}</td></tr>
	<tr><td> email : ${loginUser.email }</td></tr>
	<tr><td>전화번호 : ${loginUser.phone }</td></tr>
	<tr><td><input type="button" value="로그아웃" onClick="location.href='logout.do'"/>
			<input type="button" value="회원정보변경"
			onClick="location.href='update.do?userid=${loginUser.userid}'"></td></tr>
			<!-- 문자데이터들 사이에 EL 문법이 껴들어서 ㅂ조합문자데이터 구성가능합니다. -->
			<!-- onClick 세션에 있는 정보로 해도 되겠네 -->
</table>

<br><br><br>
<c:if test="${loginUser.admin==1 }">
	<table align="center" width="800" bgcolor="black" cellspacing="1">
		<tr bgcolor="white"><th>아이디</th><th>이름</th><th>전화번호</th>
			<th>이메일</th><th>관리자(1)/일반회원(0)</th><th>등급변경</th></tr>
		<c:forEach var="mem" items="${member}">
		
			<tr bgcolor="white" align="center">
				<td>${mem.userid }</td><td>${mem.name }</td>
				<td>${mem.phone }</td><td>${mem.email }</td>
				<td>${mem.admin }</td>
				<td>
					<c:if test="${mem.userid != loginUser.userid }">
						<c:if test="${mem.admin == 0  }">
							<input type="button" value="관리자로 변경"
							onClick="location.href='editadmin.do?userid=${mem.userid}'">
							<!-- 서블릿 이름 : EidtAdminServlet -->
						</c:if>
						<c:if test="${mem.admin == 1 }">
							<input type="button" value="일반회원으로 변경"
							onClick="location.href='editadmin.do?userid=${mem.userid}'">
						</c:if>
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>