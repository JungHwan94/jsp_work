<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>out ��ü</title>
</head>
<body>
	<h1>Out ��ü</h1>
	<%
		int totalBuffer = out.getBufferSize();
		int remaining = out.getRemaining();
		int useBuffer = totalBuffer - remaining;
	%>
	���� �������� Buffer ����<p/>
	�� Buffer ũ��: <%=totalBuffer %>byte<p/>
	���� Buffer ũ��: <%=remaining %><p/>
	���� ����� Buffer ũ��: <%=useBuffer %>byte
</body>
</html>