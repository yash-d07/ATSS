<%@page import="java.util.Random" %>
<%@page import="org.apache.commons.codec.binary.Base32"%>
<%
String input = request.getParameter("input");

Base32 base32 = new Base32();
String encodeBase32 = base32.encodeAsString(input.getBytes());
out.println("Base 32 Encoded String: " + encodeBase32);
%>