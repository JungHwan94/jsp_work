<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	<h2>�α���</h2>
    <form action="loginProc.jsp" method="post">
        ���̵�: <input type="text" name="id"><br>
        ��й�ȣ: <input type="password" name="pwd"><br>
        <input type="submit" value="�α���">
        <input type="button" value="ȸ������" onclick="location.href='member.jsp';">
    </form>
</body>
</html>