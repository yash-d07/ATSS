<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%
String input = request.getParameter("input");
String k = request.getParameter("key");
char textc[]=input.toCharArray();
char keyc[]=k.toCharArray();
int i,j;
char newKey[] = new char[input.length()];
char decrypt_Msg[] = new char[input.length()];

for(i = 0, j = 0; i < input.length(); ++i, ++j)
{
if(j == k.length())
    j = 0;
newKey[i] = keyc[j];
}

for(i = 0; i < input.length(); ++i)
     decrypt_Msg[i] = (char)((((textc[i] - newKey[i]) + 26) % 26) + 'A');

out.println(String.valueOf(decrypt_Msg));

%>