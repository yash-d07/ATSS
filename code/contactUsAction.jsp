<%@page import="project.DBconnection" %>
<%@page import="java.sql.*" %>
<%
String Email=request.getParameter("Email").toString();
String Subject = request.getParameter("subject");
String Body = request.getParameter("body");
try
	{
		Connection conn=DBconnection.getConn();
		PreparedStatement ps=conn.prepareStatement("Insert into message(Email,Subject,Body) values(?,?,?)");
		ps.setString(1,Email);
		ps.setString(2,Subject);
		ps.setString(3,Body);
		ps.executeUpdate();
		response.sendRedirect("contactUs.jsp?msg=valid");
		 
    }
   catch(Exception e)
   {
	   System.out.println(e);
	   response.sendRedirect("contactUs.jsp?msg=invalid");
   }
%>   