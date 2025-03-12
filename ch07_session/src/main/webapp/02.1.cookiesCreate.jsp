<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("","");
	response.addCookie(cookie);
	
	response.addCookie(new Cookie("NAME","정환"));
	response.addCookie(new Cookie("GENDER","남"));
	response.addCookie(new Cookie("AGE","25"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 여러개 생성</h2>
	쿠키 내용<a href="02.2.testCookies.jsp">클릭</a>
</body>
</html>