<%
String input = request.getParameter("input");     

StringBuilder result = new StringBuilder();
char[] chars = input.toCharArray();
for (char aChar : chars) {
    result.append(
            String.format("%8s", Integer.toBinaryString(aChar)).replaceAll(" ", "0")                        
    );}

String result1 = result.toString();
out.println(String.valueOf(result));
%>