<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Post Servlet방식</h1>
	<form method="post" action="PostServlet">
		ID : <input name="id"><p/>
		PW : <input type="password" name="pwd"><p/>
		email : <inpyt type="email" name="email"><p/>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>