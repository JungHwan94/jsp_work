<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name1");
	String color = request.getParameter("color");
	if(color.equals("etc")) {
		color = "green";
	}
	String koColor="";
	/*
	switch(color) {
	case "blue" :
		koColor = "�Ķ���";
		break;
	case "red" :
		koColor ="������";
		break;
	case "orange" :
		koColor = "��������";
		break;
	default :
		koColor = "��Ÿ";
	}
	*/
	
	if(color.equals("blue"))
		koColor = "�Ķ���";
	else if(color.equals("red"))
		koColor = "������";
	else if(color.equals("orange"))
		koColor = "��������";
	else
		koColor = "��Ÿ";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=color%>">
	<b><%=name %></b>���� �����ϴ� ������ <b><%=koColor %></b>�Դϴ�.
</body>
</html>