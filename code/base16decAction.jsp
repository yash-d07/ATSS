<%@page import="java.util.*" %>
<%@page import="org.apache.commons.codec.binary.Base16"%>
<%
String input = request.getParameter("input");

Base16 base16 = new Base16();
byte[] decodedBytes = base16.decode(input);
String decodedString = new String(decodedBytes);
out.println("Decoded String: " + decodedString);
%>