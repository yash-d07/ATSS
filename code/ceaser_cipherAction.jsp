<%@page import = "java.util.*"%>

<%
String input = request.getParameter("input"); 
int k=Integer.parseInt(request.getParameter("key"));

StringBuffer sb = new StringBuffer();
for (int i=0; i<input.length(); i++)
{
    if (Character.isUpperCase(input.charAt(i)))
    {
        char ch = (char)(((int)input.charAt(i) + k - 65) % 26 + 65);
        sb.append(ch);
    }
    else
    {
        char ch = (char)(((int)input.charAt(i) + k - 97) % 26 + 97);
        sb.append(ch);
    }
}
out.println(sb);
%>