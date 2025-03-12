<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 쿠키의 값에 띄어쓰기, 특수기호 안됨
	Cookie cookie = new Cookie ("myCookie", "Apple");
	cookie.setMaxAge(60);
	cookie.setValue("Banana");
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Cookie 사용하여 연결 유지</h2>
	쿠기 만들기<p/>
	쿠키 내용<a href="01.2.testCookie.jsp">클릭</a>
</body>
</html>