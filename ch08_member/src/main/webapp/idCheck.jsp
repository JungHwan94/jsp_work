<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="Member" class="ch08.MemberMgr" />
<%
	String id = request.getParameter("id");
	boolean exists = Member.checkIdExists(id);
	
	if(exists) {
		out.println("사용중인 아이디");
	} else {
		out.println("사용 가능한 아이디");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>