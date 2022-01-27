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
            if(y>=65&&y<78) 
            {
                y= y+13; 
                ch1= (char)y; 
                str1= str1+ch1; 
            }
            else if(y>=78&&y<91) 
            {
                y= y-13; 
                ch1= (char)y; 
                str1= str1+ch1; 
            }
            else if(y>=97&&y<110) 
            {
                y= y+13; 
                ch1= (char)y; 
                str1= str1+ch1; 
            }
            else if(y>=110&&y<123)
            {
                y= y-13; 
                ch1= (char)y; 
                str1= str1+ch1; 
            }
        }
        out.println(str1); 

%>