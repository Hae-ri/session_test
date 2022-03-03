<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 중</title>
</head>
<body>
	<% 
		String s_id = (String)session.getAttribute("member_id");
		String s_pw = (String)session.getAttribute("member_pw");
		
		out.println("세션 id : " + s_id + "<br>" );
		out.println("세션 pass : " + s_pw + "<br>" );

		%>
	<%= s_id %>님 로그인에 성공하셨습니다. <br><br>
	<hr>
	<%
		int session_time = session.getMaxInactiveInterval(); // 세션 기본 유효시간(30분) 가져오기
		out.println("세션의 기본 유효시간 : " + session_time/60 + "분<br><br>");
		session.setMaxInactiveInterval(60*60); // 세션 유효시간 변경
		session_time = session.getMaxInactiveInterval();
		out.println("세션의 기본 유효시간 : " + session_time/60 + "분<br><br>");
	%>
	<hr>
	<a href="logout.jsp">logout</a>
</body>
</html>