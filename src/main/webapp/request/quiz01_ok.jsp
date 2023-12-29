<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String birth = request.getParameter("birth");
	String age = request.getParameter("age");

	String[] a1 = request.getParameterValues("a1"); //checkbox
	
	String b1 = request.getParameter("b1"); //radio
	String region = request.getParameter("region");
	String intro = request.getParameter("intro");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과</h3>
	<%=id %><br>
	<%=pw %><br>
	<%=birth %><br>
	<%=age %><br>
	<%=Arrays.toString(a1) %><br>
	<%=b1 %><br>
	<%=region %><br>
	<%=intro %><br>
	
	
	
	
	
</body>
</html>