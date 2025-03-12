<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<style>
	body {
		display: flex;
		justify-content: center;
	}
</style>
</head>
<body>
	<h2>회원가입</h2>
<form action="memberProc.jsp" method="post">
    <table>
        <tr>
            <th>아이디</th>
            <td><input type="text" name="id"> 중복확인</td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pwd"> (특수기호, 영문, 숫자 각 1개 이상, 8글자 이상)</td>
        </tr>
        <tr>
            <th>비밀번호 확인</th>
            <td><input type="password" name="pwdConfirm"></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" name="name"> (한글로 입력)</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>
                <input type="radio" name="gender" value="남"> 남
                <input type="radio" name="gender" value="여"> 여
            </td>
        </tr>
        <tr>
            <th>생년월일</th>
            <td><input type="text" name="birthday"> (6글자 입력, 예: 190315)</td>
        </tr>
        <tr>
            <th>E-mail</th>
            <td><input type="text" name="email"> (예: email@example.com)</td>
        </tr>
        <tr>
            <th>우편번호</th>
            <td><input type="text" name="zipcode"></td>
        </tr>
        <tr>
            <th>주소</th>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <th>상세주소</th>
            <td><input type="text" name="detailAddress"></td>
        </tr>
        <tr>
            <th>취미</th>
            <td>
                <input type="checkbox" name="hobby" value="인터넷"> 인터넷
                <input type="checkbox" name="hobby" value="여행"> 여행
                <input type="checkbox" name="hobby" value="게임"> 게임
                <input type="checkbox" name="hobby" value="영화"> 영화
                <input type="checkbox" name="hobby" value="운동"> 운동
            </td>
        </tr>
        <tr>
            <th>직업</th>
            <td>
                <select name="job">
                    <option value="">선택하세요</option>
                    <option value="학생">학생</option>
                    <option value="직장인">직장인</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" value="가입">
            </td>
        </tr>
    </table>
</form>
</body>
</html>