<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch09.*, java.util.*" %>
<jsp:useBean id="vDao" class="ch09.VoteDao" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
<title>Insert title here</title>
<style type="text/css">
	* {margin: 0 auto;}
	div {width: 800px;}
	h2, h5, .cen {text-align: center;}
	.m30 {margin-top : 30px;}
	a {text-decoration: none !important; color:black !important; cursor:pointer !important;}
</style>
<style type="text/css">
	* {margin: 0 auto; font-family: 'Arial', sans-serif;}
	body {background-color: #f9f9f9;}
	div {width: 800px; background: white; padding: 20px; border-radius: 10px; box-shadow: 2px 2px 10px rgba(0,0,0,0.1);}
	h2, h5 {text-align: center; color: #333;}
	h2::before {content: "🗳️ ";} 
	h5::before {content: "📋 ";} 
	.m30 {margin-top: 30px;}
	a {text-decoration: none; color: #007bff; font-weight: bold;}
	a:hover {color: #0056b3; text-decoration: underline;}
	hr {border: none; border-top: 2px solid #ddd; margin: 20px 0;}
	table {width: 100%; border-collapse: collapse; background: white;}
	th, td {border: 1px solid #ddd; padding: 10px; text-align: center;}
	th {background: #007bff; color: white; border-radius: 5px 5px 0 0;}
	tr:nth-child(even) {background: #f2f2f2;}
	tr:hover {background: #e9ecef;}
	input[type="button"] {
		background: #28a745; color: white; border: none; padding: 10px 15px;
		border-radius: 5px; cursor: pointer; font-size: 14px; font-weight: bold;
	}
	input[type="button"]:hover {background: #218838;}
</style>

</head>
<body>
	<div>
		<h2 class="m30">투표 프로그램</h2>
		<hr>
		
		<h5 class="m30">설 문 폼</h4>
		<jsp:include page="voteForm.jsp" />
		<hr>
		
		<h5 class="m30">설문 리스트</h4>
		<table class="table">
			<tr class="cen">
				<th>번호</th>
				<th>제목</th>
				<th>시작일~종료일</th>
			</tr>
		<%
			ArrayList<VoteList> alist = vDao.getList();
			for(int i=0; i<alist.size(); i++) {
				VoteList vlist = alist.get(i);
				int num = vlist.getNum();
				String question = vlist.getQuestion();
				String sdate = vlist.getSdate();
				String edate = vlist.getEdate();
				
				out.print("<tr>");
				out.print("		<td>"+ (alist.size()-i) +"</td>");
				out.print("		<td><a href='voteList.jsp?num="+ num +"'>"+ question +"</a></td>");
				out.print("		<td>"+ sdate.substring(0,11) + " ~ " + edate.substring(0,10)+"</td>");
				out.print("</tr>");
			}
		%>
			<tr>
				<td colspan="3" align="right"><input type="button" onclick="location.href='voteInsert.jsp'" value="설문작성하기">
			</tr>
		</table>
	</div>
</body>
</html>