<%@page import = "java.util.*"%>

<%
String input = request.getParameter("input"); 
String str1="";
char ch,ch1; 
int i,y,l;
l= input.length();
for(i=0;i<l;i++)
        {
            ch= input.charAt(i); 
            y = (int) ch;
            if(y>=33&&y<=126) 
            {
                y= y+47; 
                ch1= (char)y; 
                str1= str1+ch1; 
            }
        }
        out.println(str1); 

%>