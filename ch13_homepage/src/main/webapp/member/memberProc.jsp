<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDao" class="member.MemberDao" />
<jsp:useBean id="mBean" class="member.Member" />
<jsp:setProperty name="mBean" property="*" />
<%
	boolean result = mDao.insertMember(mBean);
	String msg = "회원가입 실패";
	String url = "member.jsp";
	
	if(result) {
		msg = "회원가입을 환영합니다";
		url = "login.jsp";
	}
%>
<script>
	alert("<%=msg %>");
	location.href = "<%=url %>";
</script>
	alert("<%=msg%>");
	location.href = ("<%=url%>");
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
