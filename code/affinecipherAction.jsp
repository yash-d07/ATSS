<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%
String input = request.getParameter("input");
int a=Integer.parseInt(request.getParameter("a"));
int b=Integer.parseInt(request.getParameter("b"));
char textc[]=input.toCharArray();
int i;

String encrypt_msg ="";

for(i = 0; i < input.length(); i++)
{
 if (textc[i]!= ' ')
{
 encrypt_msg = encrypt_msg + (char) ((((a * (textc[i] - 'A')) + b) % 26) + 'A');
}

else
{
 encrypt_msg = encrypt_msg + textc[i];
}
}

out.println(String.valueOf(encrypt_msg));
%>