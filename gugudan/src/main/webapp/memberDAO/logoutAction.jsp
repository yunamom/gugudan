<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String log = (String)session.getAttribute("log");
session.setAttribute("log",null);
response.sendRedirect("../member/main.jsp");

%>