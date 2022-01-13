<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userList[][] = (String[][])session.getAttribute("userList");
	int userCnt = (Integer)session.getAttribute("userCnt");
	String log = (String)session.getAttribute("log");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	for(int i=0; i<userCnt; i++) {
		if(userList[i][0].equals(id) && userList[i][1].equals(pw)){
			log = userList[i][2]; break;
		}
	}
	if(log==null) {
%>
	<script>
	alert("아이디 & 비밀번호가 일치하지않습니다!");
	history.back();
	</script>
<%	return;
	}
	else {
	session.setAttribute("log",log);
%>
	<script>
	alert("로그인 성공!");
	location="../member/main.jsp";
	</script>
<%	return;
	}
%>