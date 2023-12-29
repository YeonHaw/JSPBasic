<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String k = request.getParameter("kor");
	String e = request.getParameter("eng");
	String m = request.getParameter("math");
	
	int kor = Integer.parseInt(k);
	int eng = Integer.parseInt(e);
	int math = Integer.parseInt(m);

	double result = (kor + eng + math) / 3.0;
	
	if(result >= 60) {
		response.sendRedirect("quiz01_ok.jsp");
	} else {
		response.sendRedirect("quiz01_no.jsp");
	}
	

%>