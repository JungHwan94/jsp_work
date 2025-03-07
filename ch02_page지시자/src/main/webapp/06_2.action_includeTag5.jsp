<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="06_3.action_includeTag6.jsp">
		<jps:param value="jsp 수업중" name="siteName"/>
		<jps:param value="02-1234-5678" name="siteTel"/>
	</jsp:include>
	<p/>
	
	include ActionTeg의 Body입니다<br>
	<%=siteName %><br>
	<%=siteTel %>
</body>
</html>