	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table
{
width:40%;
height:100px;
pading:0%;

}
td
{
background-color:gray;
padding:2px
}
.evenrow
{
background-color:lightblue;
}
.oddrow
{
background-color:blue;
}
#btn
{
width:30%;
height:10px;
}
</style>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="registrationcss">
<div class="registrationtabcss">
<form action="../registrationserv" method="post">
<table border="10" cellpadding="5" cellspacing="0">
<tr><th colspan="3">Registration Form</th><tr>
<tr><td>First Name</td><td colspan="2"><input type="text" name="Fname" placeholder="Enter First Name"  required/></td></tr>
<tr><td>Last Name</td><td colspan="2"><input type="text" name="Lname" placeholder="Enter Last Name" required/></td></tr>
<tr><td>Date of Birth</td><td colspan="2"><input type="date" name="dob" placeholder="Enter date of birth" required/></td></tr>
<tr><td>Mobile Number</td><td colspan="2"><input type="text" name="Mnumber" placeholder="Enter Mobile Number" required></td></tr>
<tr><td>Email Address</td><td colspan="2"><input type="text" name="email" placeholder="Enter Email ID" required></td></tr>
<tr><td>Log-in Password</td><td colspan="2"><input type="text" name="password" placeholder="Create log-in password" required></td></tr>
<tr><td>gender</td><td><input type="radio" name="gender" value="male" required>Male</td>
<td><input type="radio" name="gender" Value="female" required>Female</td></tr>
<tr><td colspan="3" align="center"><input type="submit" name="btnsubmit" value="Submit"/></td></tr>

</table>
</form>
 <%
            if(request.getParameter("q")!=null)
            {
                out.print(request.getParameter("q"));
            }
         %>
</div>
</div>
</body>
</html>