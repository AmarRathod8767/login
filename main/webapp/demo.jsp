<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="loginser" method="post">
<%
if(request.getParameter("q")!=null)
{
	out.print(request.getParameter("q"));
	}
%>
</form>

</body>
</html>