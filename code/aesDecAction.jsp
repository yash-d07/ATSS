<%@page import = "java.security.MessageDigest"%>
<%@page import = "java.util.Arrays"%>
<%@page import = "java.util.Base64"%>
<%@page import = "javax.crypto.Cipher"%>
<%@page import = "javax.crypto.spec.SecretKeySpec"%>
<%@page import = "javax.crypto.SecretKeyFactory"%>
<%@page import = "javax.crypto.spec.IvParameterSpec"%>
<%@page import = "javax.crypto.spec.PBEKeySpec"%>
<%@page import = "java.security.spec.KeySpec"%>
<%@page import = "javax.crypto.SecretKey"%>
<%@page import = "java.nio.charset.StandardCharsets"%>
<%
String message = request.getParameter("message");
String secret_key = request.getParameter("secret_key");
String salt = request.getParameter("salt");

byte[] iv = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};  

IvParameterSpec ivspec = new IvParameterSpec(iv);  

SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");  

KeySpec spec = new PBEKeySpec(secret_key.toCharArray(), salt.getBytes(), 65536, 256);  
SecretKey tmp = factory.generateSecret(spec);  
SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");  
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");  
cipher.init(Cipher.DECRYPT_MODE, secretKey, ivspec);  

String output= new String(cipher.doFinal(Base64.getDecoder().decode(message)));  
out.println(output);
%>