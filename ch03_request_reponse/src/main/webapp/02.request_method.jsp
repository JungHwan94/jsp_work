<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Method</title>
</head>
<body>
	<h1>Request Method</h1>
	�������� : <%=request.getProtocol() %><p/>
	������ �̸� : <%=request.getServerName() %><p/>
	������ ��Ʈ��ȣ : <%=request.getServerPort() %><p/>
	�����(Ŭ���̾�Ʈ)�� �ּ� : <%=request.getRemoteAddr() %><p/>
	�����(Ŭ���̾�Ʈ) �̸� : <%=request.getRemoteHost() %><p/>
	method : <%=request.getMethod() %><p/>
	��û ���(URI) : <%=request.getRequestURI() %><p/>
	��û ���(URL) : <%=request.getRequestURL() %><p/>
	���� ����ϴ� ������ : <%=request.getHeader("User-Agent") %><p/>
	���� type : <%=request.getHeader("Accept") %>
	
	
	<%-- 	
	�������� : <%=request.getProtocol() %>
	
	<% String protocol = request.getProtocol(); %>
	<%=protocol %>
	
	<%="�������� : " + request.getProtocol() %>
	 --%>
</body>
</html>