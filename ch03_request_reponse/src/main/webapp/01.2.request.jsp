<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String sNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String[] hobby = request.getParameterValues("hobby");
	
	if(gender.equals("M")) {
		gender = "����";
	} else {
		gender = "����";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request</title>
</head>
<body>
	�̸�: <%=name %><p/>
	�й�: <%=sNum %><p/>
	����: <%=gender %><p/>
	����: <%=major %><p/>
	���: <%=hobby %><p/>
	
	<%
		// �Ϲ� for��
		for(int i=0; i<hobby.length; i++) {
			out.print(hobby[i] + ", ");
		}
		// ���� for��
		for(String h : hobby) {
			out.print(h + ", ");
		}
	%>
	
<%-- 	
	<%
		for(int i=0; i<hobby.length; i++) {
	%>
			<%=hobby[i] %>, 
	<%
		}
	%>
--%>
</body>
</html>