<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="loginPro" class="ch07.LoginDB" />
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	
	if(loginPro.loginMethod(id, pw)) {
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
%>
	<script type="text/javascript">
		alert("로그인 성공");
		location.href = "04.3.cookieLoginOK.jsp";
	</script>
<%		
	} else {
%>
	<script type="text/javascript">
		alert("로그인 실패")
		location.href = "04.1.cookieLogin.jsp";
	</script>
<%		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>