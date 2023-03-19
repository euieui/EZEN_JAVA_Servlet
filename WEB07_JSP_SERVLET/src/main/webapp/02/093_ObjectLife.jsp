<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
* 각 객체의 수명
pageContext : 현재페이지까지
request : 다음 페이지까지 - forward 에 의해 연장될 수 있습니다
session : 브라우저가 닫힐때까지
application : 서버가 꺼지거나 리셋될때까지

// session 로그인 정보를 넣어서 session 이 있으면 로그인된 사이트
// 없으면 로그아웃된 사이트
// application : 서버키고 방문자수 알아내거나
 -->

<h1>second 의 pageContext 속성 : <%= pageContext.getAttribute("name") %><br>
second 의 request 속성 : <%= request.getAttribute("name") %><br>
second 의 session 속성 : <%= session.getAttribute("name") %><br>
second 의 application 속성 : <%= application.getAttribute("name") %><br>
</h1>

</body>
</html>