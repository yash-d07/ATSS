<%@page import="java.io.UnsupportedEncodingException" %>
<%@page import="java.net.URLEncoder" %>

<%
String input = request.getParameter("input");
try {
    String encodedQueryString = URLEncoder.encode(input, "UTF-8");
    out.println("Encoded URL Query String: " + encodedQueryString);
} 
catch (UnsupportedEncodingException e) {
    out.println(e);
}
%>