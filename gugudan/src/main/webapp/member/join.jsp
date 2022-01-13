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
	<div class="box">
	<header>
		<h2>gugudan</h2>
	</header>
		<nav>
		<%@include file="../include/topmenu.jsp" %>
		</nav>		
	<form action="../memberDAO/joinAction.jsp" method="post">
		<section>
			<h3> 회 원 가 입 </h3>
			<table align="center" border="1" width="400px">
				<tr>
					<td>아이디</td>
					<td>
					<input style="width:90%" type="text" name="id" required></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
					<input style="width:90%"type="password" name="pw" required></td>
				</tr>
				<tr>
					<td>이름</td>
					<td ><input style="width:90%"type="text" name="name" required></td>
				</tr>
				<tr>
					<td>성별</td>
					<td text-align="center">
					<input type="radio" name="gender" value="여성" checked>여성
					<input type="radio" name="gender" value="남성">남성
					</td>
				</tr>	
			</table>
			<input type="submit" name="저장" value="저장">
			<input type="button" onclick="location='../member/main.jsp'" value="취소">
		</section>
	</form>
	</div>
	<footer>footer</footer>
</body>
</html>