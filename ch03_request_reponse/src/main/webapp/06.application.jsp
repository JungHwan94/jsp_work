<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Application Ex</h1>
	���� �����̳��� �̸��� ����: <%=application.getServerInfo() %><p/>
	01.1.request.html ������ MIME Type: <%=application.getMimeType("01.1.request.html") %>
	�� ���ø����̼��� URL ���: <%=application.getContextPath() %><p/>
	���� ���� �ý����� ���: <%=application.getRealPath("/") %>
	<% application.log("application ���� ��ü �α� �׽�Ʈ"); %>
</body>
</html>