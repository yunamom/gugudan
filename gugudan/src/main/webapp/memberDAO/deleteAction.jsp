<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");


int userCnt = Integer.parseInt(request.getParameter("userCnt"));
int user = Integer.parseInt(request.getParameter("user"));
//탈퇴할 유저의 인덱스 번호를 받아온다.

String userList[][] = (String[][])session.getAttribute("userList");
String log = (String)session.getAttribute("log");

for(int i=user; i<userCnt-1; i++){
	userList[i] = userList[i+1];
}
userList[userCnt-1] = null; userCnt--;


session.setAttribute("userList", userList);
session.setAttribute("userCnt", userCnt);

if(log.equals("관리자")){
%>
	<script>
	location="../member/adminUserList.jsp"
	</script>
<% return;
}else{
	log = null;
	session.setAttribute("log", log);
%>
	<script>
	alert("탈퇴되었습니다.");
	location="../member/main.jsp";
	</script>
<%}%>