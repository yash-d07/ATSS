<%@page import = "org.apache.commons.codec.digest.DigestUtils"%>

<% 
String input = request.getParameter("input");
String hash = DigestUtils.md5Hex(input);
out.println(hash);
%>