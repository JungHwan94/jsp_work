<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="loginSe" class="ch07.LoginDB" />
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	
	if(loginSe.loginMethod(id, pw)) {
		session.setAttribute("idKey", id);
%>
	<script type="text/javascript">
		alert("로그인 성공");
		location.href="05.3.sessionLoginOK.jsp";
	</script>
<%		
	} else {
%>
	<script type="text/javascript">
		alert("로그인 실패");
		location.href="05.1.sessionLogin.jsp";
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