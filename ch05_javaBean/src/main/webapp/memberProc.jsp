<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="regBean" class="ch05_javaBean.MemberBean2"/>
<jsp:setProperty name="regBean" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr>
			<th colspan="2">
				<jsp:getProperty property="name" name="regBean"/>���� �ۼ��� ����
			</th>
		</tr>
		<tr>
			<td>���̵�</td>
            <td>
            	<jsp:getProperty property="id" name="regBean"/> 
            </td>	
		</tr>
        <tr>
			<td>��й�ȣ</td>
            <td>
            	<jsp:getProperty property="pwd" name="regBean"/>
            </td>	
		</tr>
        <tr>
			<td>�̸�</td>
            <td>
            	<jsp:getProperty property="name" name="regBean"/>
            </td>	
		</tr>
        <tr>
			<td>�������</td>
            <td>
            	<jsp:getProperty property="birthday" name="regBean"/>
            </td>	
		</tr>
        <tr>
			<td>�̸���</td>
            <td>
            	<jsp:getProperty property="email" name="regBean"/>
            </td>	
		</tr>
	</table>
</body>
</html>