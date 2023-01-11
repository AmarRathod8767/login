<%
session.removeAttribute("jobid");
session.invalidate();

response.sendRedirect("login.jsp");

%>