<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/style.css">
<body>
	<div class=box>
	<header>
		<h2>gugudan</h2>
		<nav>
		<%@include file="../include/topmenu.jsp" %>
		</nav>
	</header>
	<section>
		<div>
		<%String user = log+" 님 환영합니다.";
		if(log==null) {
			user = "메인화면";
		} %>
		<p2><%=user%></p2>
		</div>
	</section>
	</div>
	<footer>footer</footer>
</body>
</html>