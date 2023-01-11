package mypro;
import java.sql.*;

public class DataBaseConnection {
	
	static Connection con;
	static Statement st;
	public static void createConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject","root","root");
		st=con.createStatement();
		
	}
	public static int dmlOps(String query) throws SQLException
	{
		return st.executeUpdate(query);
	}
	public static ResultSet dqlOps(String query) throws SQLException
	{
		return st.executeQuery(query);
	}
	public static void closeConnection() throws SQLException
	{
		con.close();
	}

}
