<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/style.css">

	<script>
		
		function fn_onload() {
			var f = document.frm;
			
			f.id.focus();
			f.onload();
			
		}
	</script>
	
<body onload="fn_onload()">
	<div class=box>
	<header>
	<h2>gugudan</h2>
	</header>
		<nav>
		<%@include file="../include/topmenu.jsp" %>		
		</nav>
	<form action="../memberDAO/loginAction.jsp" method="post">
		<section>
			<h3> 로 그 인 </h3>
			<table align="center">
				<tr>
					<td><input type="text" placeholder="아이디" name="id" required></td>
				</tr>
				<tr>				
					<td><input type="password" placeholder="비밀번호" name="pw" required></td>
				</tr>			
			</table>			
				<button type="submit" onclick="fn_submit();return false;">로그인</button>
				<button type="button">회원가입</button>
		</section>
	</form>
	</div>
		<footer>
		footer
		</footer>
</body>
</html>