<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
	<script>
		alert("�̹� �α��� �߽��ϴ�")
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
	<h2>Session �α���</h2>
	<b><%=id %> �α���</b>
	<a href="05.4.sessionLogout.jsp">�α׾ƿ�</a>
</body>
</html>