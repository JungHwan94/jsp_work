<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idKey");
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% if(id != null) { %>
		<h1>
			<%=id %>님이 좋아하는 계절과 과일은 <%=season %>, <%=fruit %>이다<p/>
			ID: <%=sessionId %><p/>
			유지시간: <%=intervalTime %>초<p/> 
	<% 
			session.invalidate();
		} else { 
			out.print("세션 시간이 경과하였거나 다른 이유로 연결할 수 없습니다.");
	    }
	%>
</body>
</html>