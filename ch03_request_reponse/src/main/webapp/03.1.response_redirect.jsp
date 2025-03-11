<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Response Ex1</h1>
	<h3>sendRedirect 예제입니다</h3>
	<%
		// response.sendRedirect("03.2.response.jsp");
		response.sendRedirect("https://kn.tjoeun.co.kr/"); // 뒤로가기 비활성화됨
	%>
</body>
</html>