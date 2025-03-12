<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++) {
		if(cookies[i].getName().equals("idKey")) {
			id = cookies[i].getValue();
		}
	}
	if(!id.equals("")) {
%>
	<script>
		alert("로그인 성공");
		location.href="05.2.sessionLoginProc.jsp";
	</script>
<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="05.2.sessionLoginProc.jsp" method="post">
		<table border="1" align="center">
			<tr>
				<td colspan="2"><h2>Cookie Login</h2></td>
			</tr>
			<tr>
				<td width="50px" align="center">ID</td>
				<td><input name="userid" required></td>
			</tr>
			<tr>
				<td width="50px" align="center">PW</td>
				<td><input name="userpw" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="login">&emsp;
					<input type="reset">
				</td>
				
			</tr>
		</table>
	</form>
</body>
</html>