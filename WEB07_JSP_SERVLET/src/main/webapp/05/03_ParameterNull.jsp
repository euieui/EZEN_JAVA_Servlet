<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_ParameterNull.jsp</title>
</head>
<body>
자바 코드 : <%= request.getParameter("id") %><br>
EL 식 : ${param.id}

<!-- 아무것도 안나오지만 주소에다가 이어서 ?id=hong 쓰면 나온다! 오오오 -->
<br><br>
<%-- <%= request.getParameter("id").equals("hong") %> --%>
equals() 사용 결과 : error - equals 메서드는 "null 값"으로 비교할때 오류를 발생시킴<br>
에러를 방지하기 위해 '==' 연산자 사용 결과 : request.getParameter("id") == "hong" =>
<%= request.getParameter("id") == "hong" %><br><br>

<hr>
EL 식
== 연산자 사용 결과 : \${paramid=="hong"} -> ${param.id == "hong" } <br>
내생각을 한번 넣어봄 : \${id=="hong"} -> ${id == "hong" } <br> 
내생각이 다른이유 ? Attribute만 그냥 변수이름으로 부를 수 있나봐
<br><br><hr>

equals() 를 사용할때의 null 값 비교 오류해결방법:
<pre>
<!--  <pre> 태그 : 입력한 그대로 화면에 보여주라는 태그 : 주로 코딩 내역을 화면에 표시할때 사용.
주로 코딩 내용을 웹페이지에 표시할때 사용합니다 -->
if(request.getParameter("id") != null){
	if(request.getParameter("id").equals("hong")){
	
	}
}else{
	out.print("id가 없습니다.");
}
</pre>
</body>
</html>