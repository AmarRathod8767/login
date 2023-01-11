package mypro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registrationserv")
public class registrationserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public registrationserv() {
        super();
     }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();    
	try {
			DataBaseConnection.createConnection();
			int x=DataBaseConnection.dmlOps("insert into registration(Fname,Lname,dob,Mnumber,email,male,loginpassword)values('"+request.getParameter("Fname")+"','"+request.getParameter("Lname")+"','"+request.getParameter("dob")+"','"+request.getParameter("Mnumber")+"','"+request.getParameter("email")+"','"+request.getParameter("gender")+"','"+request.getParameter("password")+"')");
			if(x!=0)
			{
				response.sendRedirect("loginRegistrationjsp/registrationform.jsp?q=Registration Successfully");
			}
			else
			{
				response.sendRedirect("loginRegistrationjsp/registeration.jsp?q=Registration Fail");
			}
			
		} catch (Exception ex) {
		out.print(ex.getMessage().toString());
		}
	}

}
