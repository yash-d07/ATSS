<%@page import="java.util.*" %>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%
String input = request.getParameter("input");

Base64 base64 = new Base64();
String encodeBase64 = base64.encodeAsString(input.getBytes());
out.println("Base 64 Encoded String: " + encodeBase64);
%>