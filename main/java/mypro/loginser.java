package mypro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/loginser")
public class loginser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   public loginser() {
        super();
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			DataBaseConnection.createConnection();
			ArrayList list=new ArrayList();
			list.add(DataBaseConnection.dqlOps("select loginpassword from registration;" ));
			for(Object o:list)
			{
				out.print(request.getParameter("o"));
				//response.sendRedirect("demo.jsp?q=O");
			}
		} catch (Exception ex) {
			out.print(ex.getMessage().toString());
		}
		
	}

}
