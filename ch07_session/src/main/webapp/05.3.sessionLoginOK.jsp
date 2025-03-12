<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
	<script>
		alert("이미 로그인 했습니다")
		location.href="05.3.sessionLoginOK.jsp";
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
	<h2>Session 로그인</h2>
	<b><%=id %> 로그인</b>
	<a href="05.4.sessionLogout.jsp">로그아웃</a>
</body>
</html>