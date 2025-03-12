<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("idKey","user01");
	session.setAttribute("name","홍길동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>세션에 속성 넣기</h2>
	세션 정보: <a href="03.2.testSession.jsp">클릭</a>
</body>
</html>