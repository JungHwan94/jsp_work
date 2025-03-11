<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>JDBC를 이용한 ORACLE 연동</h1>
	<%
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","tjoeun","1234");
			st = con.createStatement();
			rs = st.executeQuery("select * from department");
%>
		<table border="1">
			<tr>
				<th>DeptId</th>
				<th>DeptTitle</th>
				<th>LOCATION</th>
			</tr>
		</table>
<%		
			while(rs.next()) {
				String deptId = rs.getString(1);
				String deptTitle = rs.getString(2);
				String location = rs.getString(3);
%>
			<tr>
				<td><%=deptId %></td>
				<td><%=deptTitle %></td>
				<td><%=location %></td>
			</tr>
<%
			}
			out.print("</table>");
		} catch (Exception e) {
			
		} finally {
			if(st != null) {
				st.close();
			}
			if(rs != null) {
				st.close();
			}
			if(con != null) {
				st.close();
			}
		}
	%>
</body>
</html>