<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String log = (String)session.getAttribute("log");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<a href="../member/main.jsp">메인</a>
		<%if(log==null){%>
		<a href="../member/main.jsp">회원가입</a>
		<a href="../member/login.jsp">로그인</a>
		<%}else if(log.equals("관리자")){%>
		<a href="../member/admin.jsp">관리자</a>
		<a href="../member/adminUserList.jsp">회원리스트</a>
		<a href="../member/main.jsp">로그아웃</a>
		<%}else{%>	
		<a href="../member/gugudan.jsp">구구단게임</a>
		<a href="../member/main.jsp">로그아웃</a>
		<%}%>	
</body>
</html>