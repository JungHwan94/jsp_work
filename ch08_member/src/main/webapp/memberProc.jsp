<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="Member" class="ch08.MemberMgr" />
<jsp:useBean id="user" class="ch08.MemberMgr" />
<jsp:setProperty name="user" property="*" />
<%
	boolean success = Member.insertMember(user);

	if(success) {
		response.sendRedirect("login.jsp");
	} else {
		out.print("<script>alert('회원가입 실패'); history.back();</script>");
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