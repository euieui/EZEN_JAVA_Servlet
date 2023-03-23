<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<!-- <a href="member/loginForm.jsp">로그인 페이지로 이동</a> member폴더가 보인다 즉 해킹 위험이 있다 -->
<%
/* response.sendRedirect("member/loginForm.jsp"); */ /* 그래도 member가 보임 경로노출! */
/* 서버를 이용하면! 경로노출이 안된다 */

// 시작 페이지 index.jsp 에서는 실제 내용을 담은 페이지 또는 서블릿으로 로딩과 동시에
// 이동하는 동작을 넣는것이 보통이며, 특히나 통상 보안을 위해서라면 서블릿으로 이동하는것이 보통입니다
response.sendRedirect("login.do");


%>
</body>
</html>