<%@page import = "org.apache.commons.codec.digest.DigestUtils"%>

<% 
String input = request.getParameter("input");
String hash = DigestUtils.sha1Hex(input);
out.println(hash);
%>