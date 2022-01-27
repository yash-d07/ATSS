<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%
String input = request.getParameter("input");
int a=Integer.parseInt(request.getParameter("a1"));
int b=Integer.parseInt(request.getParameter("b1"));
char textc[]=input.toCharArray();
int i, a_inv=0, flag=0;

String decrypt_msg = "";

 for (i = 0; i < 26; i++)
        {
            flag = (a * i) % 26;
            
            if (flag == 1)
            {
                a_inv = i;
            }
        }

for(i = 0; i < input.length(); i++)
{
  if (input.charAt(i) != ' ')
            {
                decrypt_msg = decrypt_msg + (char) (((a_inv *((input.charAt(i) + 'A' - b)) % 26)) + 'A');
            }
            else
            {
                decrypt_msg= decrypt_msg + input.charAt(i);
            }
}

out.println(String.valueOf(decrypt_msg));
%>