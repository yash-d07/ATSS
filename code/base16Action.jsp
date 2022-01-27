<%@page import="java.util.*" %>
<%@page import="org.apache.commons.codec.binary.Base16"%>
<%
String input = request.getParameter("input");

Base16 base16 = new Base16();
String encodeBase16 = base16.encodeAsString(input.getBytes());
out.println("Base 16 Encoded String: " + encodeBase16);
%>