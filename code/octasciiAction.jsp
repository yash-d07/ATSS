<%
String input = request.getParameter("input");     

Integer iOctal = Integer.parseInt(input, 8);
char cOctal = (char)iOctal.intValue();
out.println(cOctal);
%>