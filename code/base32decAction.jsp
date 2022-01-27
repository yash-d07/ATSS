<%@page import="java.util.Random" %>
<%@page import="org.apache.commons.codec.binary.Base32"%>
<%
String input = request.getParameter("input");

Base32 base32 = new Base32();
byte[] decodedBytes = base32.decode(input);
String decodedString = new String(decodedBytes);
out.println("Decoded String: " + decodedString);
%>