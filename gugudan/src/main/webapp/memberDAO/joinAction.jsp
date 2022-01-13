<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");

String userList[][] = (String[][])session.getAttribute("userList");
int userCnt = (Integer)session.getAttribute("userCnt");

boolean check = false;
for(int i=0; i<userCnt; i++){
	if(userList[i][0].equals(id)){
		check = true; break;
	}
}

if(check == true){
%>
	<script>
	alert("중복된 아이디입니다.");
	history.back();
	</script>
<% return;
}else{
	String u = "";
	for(int i=0; i<4; i++){
		switch(i){
		case(0):u = id; break;
		case(1):u = pw; break;
		case(2):u = name; break;
		case(3):u = gender; break;
		}	
		userList[userCnt][i] = u;
	}
	userCnt++;
	session.setAttribute("userList",userList);
	session.setAttribute("userCnt",userCnt);
%>
	<script>
	alert("회원가입 완료! 로그인 해주세요.");
	location="../member/login.jsp";
	</script>
<%
}
%>