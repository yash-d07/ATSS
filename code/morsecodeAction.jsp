<%@page import = "java.util.*"%>

<%
String input = request.getParameter("input");
int l = input.length();
char[] letter = { 'a', 'b', 'c', 'd', 'e', 'f',
        'g', 'h', 'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p', 'q', 'r',
        's', 't', 'u', 'v', 'w', 'x',
        'y', 'z', '1', '2', '3', '4',
        '5', '6', '7', '8', '9', '0' };

String[] code
= { ".-",   "-...", "-.-.", "-..",  ".",
    "..-.", "--.",  "....", "..",   ".---",
    "-.-",  ".-..", "--",   "-.",   "---",
    ".--.", "--.-", ".-.",  "...",  "-",
    "..-",  "...-", ".--",  "-..-", "-.--",
    "--..", "|" };
try{
       for (int i = 0; i < l; i++) {
            for (int j = 0; j < letter.length; j++) {
                if (input.charAt(i) == letter[j]) {
                    out.println(code[j] + " ");
                    break;
                }
            }
        }
}
catch(Exception e)
{
	response.sendRedirect("morsecode.jsp?msg=invalid");
	System.out.println(e);
	
}
%>