<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String message="hello world";
	out.println(message);
%>
<p><%=new java.util.Date() %></p>
<%! String a="10";

%>
<% 
	out.println(a);
%>
</body>
</html>