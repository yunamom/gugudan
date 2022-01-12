<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
String[] sampleId = {"admin","aaa","bbb","ccc"};
String[] samplePw = {"admin","234","345","123"};
String[] sampleName = {"관리자","이만수","박영희","이수민"};
String[] sampleGender = {"남성","남성","여성","여성"};
int userCnt = 4;

String[][] userList = new String[100][userCnt];
for(int i=0; i<userCnt; i++){
	userList[i][0]=sampleId[i];
	userList[i][1]=samplePw[i];
	userList[i][2]=sampleName[i];
	userList[i][3]=sampleGender[i];
}

session.setAttribute("userList",userList);
session.setAttribute("userCnt",userCnt);

session.setAttribute("log",null);

response.sendRedirect("main.jsp");
%>