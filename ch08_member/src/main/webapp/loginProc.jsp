<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="Member" class="ch08.MemberMgr" />
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pw");
	
	boolean loginSuccess = Member.loginMember(id, pwd);

    if (loginSuccess) {
        session.setAttribute("userId", id);
        response.sendRedirect("member.jsp");
    } else {
        out.println("<script>alert('로그인 실패!'); history.back();</script>");
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