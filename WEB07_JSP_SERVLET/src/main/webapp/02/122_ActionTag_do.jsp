<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>


<%
// 112_ActionTag_do.jsp
String userID = request.getParameter("userID");
String userPwd = request.getParameter("userPwd");
String loginCheck = request.getParameter("loginCheck");
// 사용자 로그인일 경우 ... 123_ActionUser.jsp 로 이동
// 관리자 로그인일 경우 ... 124_ActionManager.jsp 로 이동

//response.sendRedirec로 사용한 경우 1번째 방법
/* if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("user")){
	response.sendRedirect(
			"123_ActionUser.jsp?userID=" +userID +"&userName=" + URLEncoder.encode("홍길동","UTF-8"));
} else if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("manager")){
	response.sendRedirect(
			"124_ActionManager.jsp?userID="+userID+ " &userName=" + URLEncoder.encode("홍길님","UTF-8"));
}else{
	response.sendRedirect("121_ActionTagForm.jsp");
} */

//forward를 사용한 경우 2번째 방법
/* String url = null;
if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("user")){
	url = "123_ActionUser.jsp";
	request.setAttribute("userName","홍길동");
	RequestDispatcher dp = request.getRequestDispatcher(url);
	dp.forward(request,response);
}else if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("manager")){
	url = "124_ActionManager.jsp";
	request.setAttribute("userName","홍길님");
	RequestDispatcher dp = request.getRequestDispatcher(url);
	dp.forward(request,response);
} else{
	response.sendRedirect("121_ActionTagForm.jsp");
} */
%>
<%
// 액션 태그를 사용한경우
if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("user")){
%>
	<jsp:forward page="123_ActionUser.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("홍길동","UTF-8") %>'/>
	</jsp:forward>
<%
} else if(userID.equals("scott") && userPwd.equals("1234") && loginCheck.equals("manager")){
%>
	<jsp:forward page="124_ActionManager.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("홍길님","UTF-8") %>'/>
	</jsp:forward>
<%
}else{
	response.sendRedirect("121_ActionTagForm.jsp");
}
%>


