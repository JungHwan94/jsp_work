<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="script.js" charset="UTF-8"></script>
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<form method="post" action="memberProc.jsp">
			<tr>
				<th colspan="2">ȸ �� �� ��</th>
			</tr>
			<tr>
				<td>���̵�</td>
                <td><input name="id"></td>	
			</tr>
            <tr>
				<td>��й�ȣ</td>
                <td><input type="password" name="pwd"></td>	
			</tr>
            <tr>
				<td>��й�ȣ Ȯ��</td>
                <td><input type="password" name="rePwd"></td>	
			</tr>
            <tr>
				<td>�̸�</td>
                <td><input name="name"></td>	
			</tr>
            <tr>
				<td>�������</td>
                <td><input name="birthday"></td>	
			</tr>
            <tr>
				<td>�̸���</td>
                <td><input name="email"></td>	
			</tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" value="ȸ������" onclick="inputCheck();">&emsp;
                    <input type="reset">
                </td>
            </tr>
		</form>
	</table>
	
</body>
</html>