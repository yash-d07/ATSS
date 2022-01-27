<%@page import = "org.apache.commons.codec.digest.HmacAlgorithms"%>
<%@page import = "org.apache.commons.codec.digest.HmacUtils"%>
<% 
String input2 = request.getParameter("input2");
byte[] key2 = "secret".getBytes();
HmacUtils hm512 = new HmacUtils(HmacAlgorithms.HMAC_SHA_512, key2);
String hmac2 = hm512.hmacHex(input2);
out.println(hmac2);
%>