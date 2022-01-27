<% 
String input = request.getParameter("input");     

StringBuffer result = new StringBuffer();
for (int i = 0;i < input.length();i += 8) {
result.append((char) Integer.parseInt(input.substring(i, i + 8), 2));
}

out.println(String.valueOf(result));

%>