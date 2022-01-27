package project;
import java.sql.*;
public class DBconnection {
  public static Connection getConn() 
  {
	  try
	  {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/atss","root","password");
		  return conn;
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
		  return null;
	  }
  }
}
