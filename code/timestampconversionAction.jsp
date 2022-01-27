<%@page import = "java.util.*"%>
<%@page import = "java.text.*"%>

<%
String input = request.getParameter("input");     

long u_time=Long.parseLong(input);
Date date = new Date(u_time*1000L);

SimpleDateFormat s_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss z");
s_date.setTimeZone(TimeZone.getTimeZone("GMT+05:30"));
String common_date = s_date.format(date);
out.println("Timestamp in Regular Format:- "+String.valueOf(common_date));

%>