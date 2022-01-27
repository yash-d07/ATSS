<%@page import = "java.util.*"%>

<%
String input = request.getParameter("input");  

char[] reverseString = new char[input.length()];
Stack<Character> stack = new Stack<Character>();

for (int i = 0; i < input.length(); i++) {
            stack.push(input.charAt(i));
}
  
int i = 0;
while (!stack.isEmpty()) { 
            reverseString[i++] = stack.pop();
}
out.println(reverseString);        
%>