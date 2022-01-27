<%@page import="java.io.UnsupportedEncodingException" %>
<%@page import="java.net.URLDecoder" %>

<%
String input = request.getParameter("input");
try {
    String decodedQueryString = URLDecoder.decode(input, "UTF-8");
    out.println("Decoded URL Query String: " + decodedQueryString);
} 
catch (UnsupportedEncodingException e) {
    out.println(e);
}
%>