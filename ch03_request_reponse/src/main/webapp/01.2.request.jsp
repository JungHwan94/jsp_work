<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String sNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String[] hobby = request.getParameterValues("hobby");
	
	if(gender.equals("M")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request</title>
</head>
<body>
	이름: <%=name %><p/>
	학번: <%=sNum %><p/>
	성별: <%=gender %><p/>
	전공: <%=major %><p/>
	취미: <%=hobby %><p/>
	
	<%
		// 일반 for문
		for(int i=0; i<hobby.length; i++) {
			out.print(hobby[i] + ", ");
		}
		// 향상된 for문
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