<%@page import = "org.apache.commons.codec.digest.HmacAlgorithms"%>
<%@page import = "org.apache.commons.codec.digest.HmacUtils"%>
<% 
String input1 = request.getParameter("input1");
byte[] key1 = "secret".getBytes();
HmacUtils hm256 = new HmacUtils(HmacAlgorithms.HMAC_SHA_256, key1);
String hmac1 = hm256.hmacHex(input1);
out.println(hmac1);
%>