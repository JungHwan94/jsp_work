<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60*5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Session Ex</h1>
	<form action="05.3.session.jsp">
		1. ���� �����ϴ� ������?<p/>
		<input type="radio" name="season" value="��">��&emsp;
		<input type="radio" name="season" value="����">����&emsp;
		<input type="radio" name="season" value="����">����&emsp;
		<input type="radio" name="season" value="�ܿ�">�ܿ�&emsp;
		<p/><p/>
		
		2. ���� �����ϴ� ������?<p/>
		<input type="radio" name="fruit" value="���">���&emsp;
		<input type="radio" name="fruit" value="����">����&emsp;
		<input type="radio" name="fruit" value="����">����&emsp;
		<input type="radio" name="fruit" value="���">���&emsp;
		
		<input type="submit" value="����">&emsp;
		<input type="reset">
	</form>
</body>
</html>