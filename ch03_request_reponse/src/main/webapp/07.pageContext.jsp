<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("<h2>out.print() 메소드를 이용한 출력</h2>");
	
		pageContext.getOut().print("");
	%>
</body>
</html>