<%
String input = request.getParameter("input");     


for(int i=0; i < input.length(); i++)
{
    out.println((int)input.charAt(i));
}

%>