<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>112_JSPServlet_Ex02.jsp</title>
</head>
<body>
<h3> <%=request.getAttribute("name") %>님 반갑습니다.</h3>
<h3>성별은
<%
if(request.getParameter("gender").equals("1")){
	out.print("남자");
}else{
	out.print("여자");
}
%>
입니다.</h3>
<h3>메일 정보 수신 여부는 
<%
if(request.getParameter("chk_mail").equals("1")){
	out.print("수신");
}else{
	out.print("거부");
}
%>
하셨습니다.
</h3>
<h3>-----작성하신 간단한 가입 인사-----</h3>
<h3><%=request.getParameter("content") %></h3>
<h3>----- 구입 항목 -----</h3>
<h3>
<%
String items[] = request.getParameterValues("item");
if(items ==null) out.print("선택한 항목이 없습니다.");
else{
	for(String item : items){
		switch(Integer.parseInt(item)){
			case 1 : out.print("신발 ");break;
			case 2 : out.print("가방 ");break;
			case 3 : out.print("벨트 ");break;
			case 4 : out.print("모자 ");break;
			case 5 : out.print("시계 ");break;
			case 6 : out.print("쥬얼리 ");break;
		}
	}
}
%></h3>
<h3>직업은
<%
switch(Integer.parseInt(request.getParameter("job"))){
	case 1 : out.print("학생"); break;
	case 2 : out.print("컴퓨터/인터넷"); break;
	case 3 : out.print("언론"); break;
	case 4 : out.print("공무원"); break;
	case 5 : out.print("군인"); break;
	case 6 : out.print("서비스업"); break;
}
%> 입니다.
</h3>
<h3>----- 관심 분야 -----</h3>
<%
String interests[] = request.getParameterValues("interest");
if(interests ==null) out.print("선택한 항목이 없습니다.");
else{
	for(String interest2 : interests){
		out.print(interest2 +" ");
	}
}%>
</body>
</html>