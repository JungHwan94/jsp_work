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
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
	<%=id %>�ݰ�����~/<p/>
	<a href="05.logout.jsp">�α׾ƿ�</a>
<%		
	} else {
%>
	<form method="post" action="loginServlet">
		ID: <input name="id"><p/>
		PW: <input type="password" name="pwd"><p/>
		<input type="submit" value="�α���">
	</form>
<% } %>
</body>
</html>