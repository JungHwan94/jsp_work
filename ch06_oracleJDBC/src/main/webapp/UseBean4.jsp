<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ch06_oracleJDBC.*, java.util.*" %>
<jsp:useBean id="uBean" class="ch06_oracleJDBC.UseDBPool5" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean�� ����� ORACLE����</h1>
	<table border="1">
		<tr>
			<th>�μ��ڵ�</th>
			<th>�μ���</th>
			<th>�繫�� ��ġ�ڵ�</th>
		</tr>
	<%
		ArrayList<Bean> list = uBean.getList();
		for(int i=0; i<list.size(); i++) {
			Bean bean = list.get(i);
	%>
		<tr>
			<td><%=bean.getDept_id() %></td>
			<td><%=bean.getDept_title() %></td>
			<td><%=bean.getLocation_id() %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>