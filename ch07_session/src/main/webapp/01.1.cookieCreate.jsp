<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ��Ű�� ���� ����, Ư����ȣ �ȵ�
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
	<h2>Cookie ����Ͽ� ���� ����</h2>
	��� �����<p/>
	��Ű ����<a href="01.2.testCookie.jsp">Ŭ��</a>
</body>
</html>