<%@page import = "java.util.*"%>
<%@page import = "java.lang.*"%>

<%
String first = request.getParameter("first");
String second = request.getParameter("second");

StringBuffer sb = new StringBuffer();

for (int i=0; i<first.length(); i++){
	sb.append(first.charAt(i)^second.charAt(i));
}

out.println(sb);

%>