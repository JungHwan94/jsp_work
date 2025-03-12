<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
	<h2>로그인</h2>
    <form action="loginProc.jsp" method="post">
        아이디: <input type="text" name="id"><br>
        비밀번호: <input type="password" name="pwd"><br>
        <input type="submit" value="로그인">
        <input type="button" value="회원가입" onclick="location.href='member.jsp';">
    </form>
</body>
</html>