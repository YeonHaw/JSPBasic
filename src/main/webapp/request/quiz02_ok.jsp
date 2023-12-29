<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	

	String name = request.getParameter("name");
	String sCm = request.getParameter("cm");
	String sKg = request.getParameter("kg");
	
	double cm = Double.parseDouble(sCm);
	double kg = Double.parseDouble(sKg);
	double bmi = kg / (cm/100 * cm/100);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과</h3>
	
	이름:<%=name %><br>
	신장:<%=cm %><br>
	몸무게:<%=kg %><br>
	BMI지수:<%=bmi %><br>
	
	<% if(bmi >= 25) { %>
		<p>과체중 입니다</p>
	<% } else if(bmi <= 18) { %>
		<p>저체중 입니다</p>
	<% } else { %>
		<p>정상 입니다</p>
	<% } %>




</body>
</html>