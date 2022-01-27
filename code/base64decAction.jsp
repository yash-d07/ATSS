<%@page import="java.util.*" %>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%
String input = request.getParameter("input");

Base64 base64 = new Base64();
byte[] decodedBytes = base64.decode(input);
String decodedString = new String(decodedBytes);
out.println("Decoded String: " + decodedString);
%>