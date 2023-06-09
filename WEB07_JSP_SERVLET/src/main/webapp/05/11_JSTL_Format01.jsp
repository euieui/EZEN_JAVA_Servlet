<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_JSTL_Format01.jsp</title>
</head>
<body>
<!-- 오늘 날짜 발생 및 변수에 저장 -->
<c:set var="now" value="<%= new java.util.Date() %>"></c:set>
<!-- 일반적인 출력 -->
<h2>\${now } : ${now }</h2>

<!-- JSTL 포맷팅에 의한 출력 -->
<h2>
<fmt:formatDate value="${now }"></fmt:formatDate><br>
date : <fmt:formatDate value="${now }" type="date"></fmt:formatDate><br>
time : <fmt:formatDate value="${now }" type="time"></fmt:formatDate><br>
both : <fmt:formatDate value="${now }" type="both"></fmt:formatDate><br>

</h2>
<br><br>
<h2>
default : <fmt:formatDate value="${now }" type="both" dateStyle="default" 
				timeStyle="default"></fmt:formatDate><br> <!-- 닫는 언어가 엔터쳐서 밑으로 내리면 안돼 에러남 -->
short : <fmt:formatDate value="${now }" type="both" dateStyle="short" 
				timeStyle="short"></fmt:formatDate><br>
long : <fmt:formatDate value="${now }" type="both" dateStyle="long" 
				timeStyle="long"></fmt:formatDate><br>
full : <fmt:formatDate value="${now }" type="both" dateStyle="full" 
				timeStyle="full"></fmt:formatDate><br>

pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" :
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate><br>

</h2>
</body>
</html>