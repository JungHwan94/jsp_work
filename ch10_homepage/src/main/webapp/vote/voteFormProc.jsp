<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals("")))      
		num = Integer.parseInt(request.getParameter("num"));
	
	String[] itemnum = request.getParameterValues("itemnum"); // 0, 2, 3
	boolean result = vDao.updateCount(num, itemnum);
	String msg = "투표가 등록되지 않았습니다.";
	
	if(result) {
		msg = "투표 등록이 되었습니다.";
	}
%>
<script type="text/javascript">
	alert("<%=msg %>");
	location.href = "voteList.jsp?num=<%=num%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>