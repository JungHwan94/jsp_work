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
	String msg = request.getParameter("msg");
	int count = Integer.parseInt(request.getParameter("count"));
	
	int c = 0;
	/*
	while(c < count) {
		out.print(msg + "<br>");
		c++;
	}
	*/
	
	while(c < count) {
%>
	<%=msg %><br>
<%
		c++;
	}
%>
</body>
</html>