<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<style>
	body {
		display: flex;
		justify-content: center;
	}
</style>
</head>
<body>
	<h2>ȸ������</h2>
<form action="memberProc.jsp" method="post">
    <table>
        <tr>
            <th>���̵�</th>
            <td><input type="text" name="id"> �ߺ�Ȯ��</td>
        </tr>
        <tr>
            <th>��й�ȣ</th>
            <td><input type="password" name="pwd"> (Ư����ȣ, ����, ���� �� 1�� �̻�, 8���� �̻�)</td>
        </tr>
        <tr>
            <th>��й�ȣ Ȯ��</th>
            <td><input type="password" name="pwdConfirm"></td>
        </tr>
        <tr>
            <th>�̸�</th>
            <td><input type="text" name="name"> (�ѱ۷� �Է�)</td>
        </tr>
        <tr>
            <th>����</th>
            <td>
                <input type="radio" name="gender" value="��"> ��
                <input type="radio" name="gender" value="��"> ��
            </td>
        </tr>
        <tr>
            <th>�������</th>
            <td><input type="text" name="birthday"> (6���� �Է�, ��: 190315)</td>
        </tr>
        <tr>
            <th>E-mail</th>
            <td><input type="text" name="email"> (��: email@example.com)</td>
        </tr>
        <tr>
            <th>�����ȣ</th>
            <td><input type="text" name="zipcode"></td>
        </tr>
        <tr>
            <th>�ּ�</th>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <th>���ּ�</th>
            <td><input type="text" name="detailAddress"></td>
        </tr>
        <tr>
            <th>���</th>
            <td>
                <input type="checkbox" name="hobby" value="���ͳ�"> ���ͳ�
                <input type="checkbox" name="hobby" value="����"> ����
                <input type="checkbox" name="hobby" value="����"> ����
                <input type="checkbox" name="hobby" value="��ȭ"> ��ȭ
                <input type="checkbox" name="hobby" value="�"> �
            </td>
        </tr>
        <tr>
            <th>����</th>
            <td>
                <select name="job">
                    <option value="">�����ϼ���</option>
                    <option value="�л�">�л�</option>
                    <option value="������">������</option>
                    <option value="��Ÿ">��Ÿ</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" value="����">
            </td>
        </tr>
    </table>
</form>
</body>
</html>