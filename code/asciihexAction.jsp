<%
String input = request.getParameter("input");     

StringBuffer sb = new StringBuffer();
char ch[] = input.toCharArray();

for(int i = 0; i < ch.length; i++) {
   String hexString = Integer.toHexString(ch[i]);
   sb.append(hexString);
}

String result = sb.toString();
out.println(String.valueOf(result));

%>