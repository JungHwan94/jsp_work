<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("","");
	response.addCookie(cookie);
	
	response.addCookie(new Cookie("NAME","��ȯ"));
	response.addCookie(new Cookie("GENDER","��"));
	response.addCookie(new Cookie("AGE","25"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��Ű ������ ����</h2>
	��Ű ����<a href="02.2.testCookies.jsp">Ŭ��</a>
</body>
</html>