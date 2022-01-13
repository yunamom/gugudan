<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userList[][] = (String[][])session.getAttribute("userList");
int userCnt = (Integer)session.getAttribute("userCnt");

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/style.css">
<body>
	<div class=box>
	<header>
		<h2>관리자모드</h2>
	</header>
		<nav>
		<%@ include file="../include/topmenu.jsp" %>
		</nav>
	<section>
		<h3> 회 원 리 스 트 </h3>
		<table border="1" width=500px align="center">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>성별</th>
				<th>삭제</th>
			</tr>
			<tbody>
			<%for(int i=1; i<userCnt; i++) {%>
			<tr align="center">
				<% for(int j=0; j<userList[i].length; j++) {%>
				<td><%=userList[i][j]%></td>
				<%}%>
				<td>
					<button type="button" 
					onclick="location='../memberDAO/deleteAction.jsp?user=<%=i%>&&userCnt=<%=userCnt%>'">삭제</button>
				</td>
			</tr>
			<%}%>
			</tbody>
		</table>
	</section>
	</div>
	<footer>
		footer		
	</footer>
</body>
</html>