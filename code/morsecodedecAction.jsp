<%@page import = "java.util.*"%>

<%
String input = request.getParameter("input");

String[] array = input.split(" ");

String[] code
= { ".-",   "-...", "-.-.", "-..",  ".",
    "..-.", "--.",  "....", "..",   ".---",
    "-.-",  ".-..", "--",   "-.",   "---",
    ".--.", "--.-", ".-.",  "...",  "-",
    "..-",  "...-", ".--",  "-..-", "-.--",
    "--..", "|" };

       for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < code.length; j++) {
                if (array[i].compareTo(code[j]) == 0) {
                    out.println((char)(j + 'a')+ " ");
                    break;
                }
            }
        }
%>