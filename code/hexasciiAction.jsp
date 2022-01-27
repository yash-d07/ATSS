<%
String input = request.getParameter("input");     

StringBuffer sb = new StringBuffer();
char ch[] = input.toCharArray();

for(int i = 0; i < ch.length; i+=2) {
   String hexString = input.substring(i, i + 2);
   sb.append((char) Integer.parseInt(hexString, 16));
}

String result = sb.toString();
out.println(String.valueOf(result));

%>