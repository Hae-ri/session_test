<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String pid = request.getParameter("id");
		String ppw = request.getParameter("pw");
		
		if (pid.equals("tiger") && ppw.equals("12345"))
		{			
			session.setAttribute("member_id", pid);
			session.setAttribute("member_pw", ppw);
			
			response.sendRedirect("welcome.jsp");
			
			//out.println("로그인 성공<br>");
			//out.println("[ " + pid + " ] 님 반갑습니다.!");		
		}
		else
		{
			response.sendRedirect("sessionCreate.jsp");
			
			//out.println("로그인 실패<br>");
			//out.println("회원정보가 없습니다. 다시 확인하세요.");
		}
	%>
</body>
</html>